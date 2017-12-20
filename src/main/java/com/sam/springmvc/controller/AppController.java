package com.sam.springmvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.FileBucket;
import com.sam.springmvc.model.Job;
import com.sam.springmvc.model.User;
import com.sam.springmvc.model.UserDocument;
import com.sam.springmvc.model.UserProfile;

import com.sam.springmvc.service.JobService;
import com.sam.springmvc.service.UserDocumentService;
import com.sam.springmvc.service.UserProfileService;
import com.sam.springmvc.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")

public class AppController {

	@Autowired
	UserService userService;
	
	@Autowired
	UserProfileService userProfileService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Autowired
	private JobService jobService;
	
	
	@Autowired
	private UserDocumentService userDocumentService;
	
	
	/**
	 * This method will list all existing users.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView listJob1(ModelAndView model) throws IOException {
		List<Job> listJob = jobService.listActiveJobs();
		model.addObject("listJob", listJob);
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView listJob (ModelAndView modelview, ModelMap model) throws IOException {
		List<Job> listJob = jobService.getAllJobs();
		modelview.addObject("listJob", listJob);
		
		model.addAttribute("loggedinuser", getPrincipal());
		modelview.setViewName("adminhome_joblist");
		return modelview;
	}
	
	@RequestMapping(value="/editJob",method = RequestMethod.GET)  
    public String editJob(@ModelAttribute("job") Job job, Model model,HttpServletRequest request){
		job = jobService.getJob(job.getId());

        model.addAttribute("job", this.jobService.updateJob(job));
        return "EmployeeForm";
    }
	
	@RequestMapping(value="/UpdateJobResponses",method = RequestMethod.GET)  
    public String UpdateJobResponses(@ModelAttribute("job") Job job, Model model,HttpServletRequest request){
		job = jobService.getJob(job.getId());

        model.addAttribute("job", this.jobService.updateJobResponses(job));
        return "EmployeeForm";
    }
	
	@RequestMapping(value="/editJob2",method = RequestMethod.GET)  
    public String editJob2(@ModelAttribute("job") Job job, Model model,HttpServletRequest request){
		job = jobService.getJob(job.getId());

        model.addAttribute("job", this.jobService.updateJob(job));
        return "EmployeeForm2";
    }

	@RequestMapping(value = "/deleteJob", method = RequestMethod.GET)
	public ModelAndView deleteJob(HttpServletRequest request,Job job) {
	    jobService.deleteJob(job.getId());
		return new ModelAndView("redirect:/list");
	}

	
	@RequestMapping(value = "/newjob", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model, ModelMap model1) {
		Job job = new Job();
		model.addObject("job", job);
		model.setViewName("EmployeeForm");
		model1.addAttribute("loggedinuser", getPrincipal());
		return model;
	}
	
	@RequestMapping(value = "/newuserext", method = RequestMethod.GET)
	public ModelAndView credentials(ModelAndView model, ModelMap model1) {
		Job job = new Job();
		model.addObject("job", job);
		model.setViewName("registrationsuccess");
		model1.addAttribute("loggedinuser", getPrincipal());
		return model;
	}
	
	  @RequestMapping(value = "/saveJob2", method = RequestMethod.POST)
	  public ModelAndView saveJob2(@ModelAttribute("job") Job job, 
				BindingResult result, HttpSession session) {
			ModelAndView modelView;
			
			if (result.hasErrors()) {
				
				modelView = new ModelAndView("adminhome_joblist");
				return modelView;
			}
			
			jobService.updateJob1(job);
			return new ModelAndView("redirect:/list");
	  }
	  
	  @RequestMapping(value = "/saveJob3", method = RequestMethod.POST)
	  public ModelAndView saveJob3(@ModelAttribute("job") Job job, 
				BindingResult result, HttpSession session) {
			ModelAndView modelView;
			
			if (result.hasErrors()) {
				
				modelView = new ModelAndView("adminhome_joblist");
				return modelView;
			}
			
			jobService.updateJobResponses(job);
			return new ModelAndView("redirect:/list");
	  }

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newuser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("edit", false);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}
		
		userService.saveUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		//return "success";
		return "registrationsuccess";
	}


	
	
	/**
	 * This method will provide the medium to update an existing user.
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String ssoId, ModelMap model) {
		User user = userService.findBySSO(ssoId);
		model.addAttribute("user", user);
		model.addAttribute("edit", true);
		model.addAttribute("loggedinuser", getPrincipal());
		return "registration";
	}
	
	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/edit-user-{ssoId}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result,
			ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "registration";
		}

		/*//Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which is a unique key to a User.
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}*/


		userService.updateUser(user);

		model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		return "registrationsuccess";
	}

	
	/**
	 * This method will delete an user by it's SSOID value.
	 */
	@RequestMapping(value = { "/delete-user-{ssoId}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/list";
	}
	

	/**
	 * This method will provide UserProfile list to views
	 */
	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}
	
	/**
	 * This method handles Access-Denied redirect.
	 */
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(ModelAndView model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	        return "redirect:/list"; 
	    }
	}

	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}
	
	
	@RequestMapping(value = "/viewDetails", method = RequestMethod.GET)
	public ModelAndView viewDetails(HttpServletRequest request,Job job) {
	    job = jobService.getJob(job.getId());
		ModelAndView model = new ModelAndView("viewForm");
		model.addObject("job", job);
		return model;
	}
	
	@RequestMapping(value = "/viewDetails2", method = RequestMethod.GET)
	public ModelAndView viewDetails2(HttpServletRequest request,Job job) {
	    job = jobService.getJob(job.getId());
		ModelAndView model = new ModelAndView("viewForm2");
		model.addObject("job", job);
		return model;
	}
	
	@ModelAttribute("onlyuser")
	public List<UserProfile> getonlyUserType() {
		return userProfileService.userProfile();
	}
	
	/**
	 * Here's a controller for upload and delete
	 */
	 
	@RequestMapping(value = { "/add-document-{id}" }, method = RequestMethod.GET)
	public String addDocuments(@PathVariable int id, ModelMap model) {
		User user = userService.findById(id);
		model.addAttribute("user", user);

		FileBucket fileModel = new FileBucket();
		model.addAttribute("fileBucket", fileModel);

		List<UserDocument> documents = userDocumentService.findAllByUserId(id);
		model.addAttribute("documents", documents);
		
		return "managedocuments";
	}
	
	@RequestMapping(value = { "/add-document-{id}" }, method = RequestMethod.POST)
	public String uploadDocument(@Valid FileBucket fileBucket, BindingResult result, ModelMap model, @PathVariable int id) throws IOException{
		
		if (result.hasErrors()) {
			System.out.println("validation errors");
			User user = userService.findById(id);
			model.addAttribute("user", user);

			List<UserDocument> documents = userDocumentService.findAllByUserId(id);
			model.addAttribute("documents", documents);
			
			return "managedocuments";
		} else {
			
			System.out.println("Fetching file");
			
			User user = userService.findById(id);
			model.addAttribute("user", user);

			saveDocument(fileBucket, user);

			
			/*return "redirect:/add-document-"+id;*/
			return "redirect:/home2";
		}
	}
	
			@RequestMapping(value = "/home2", method = RequestMethod.GET)
			public ModelAndView listJob2(ModelAndView model) throws IOException {
				List<Job> listJob = jobService.listActiveJobs();
				model.addObject("listJob", listJob);
				model.setViewName("home2");
				return model;
			}
	
	
	
		private void saveDocument(FileBucket fileBucket, User user) throws IOException{
		
		UserDocument document = new UserDocument();
		
		MultipartFile multipartFile = fileBucket.getFile();
		
		document.setName(multipartFile.getOriginalFilename());
		document.setDescription(fileBucket.getDescription());
		document.setType(multipartFile.getContentType());
		document.setContent(multipartFile.getBytes());
		document.setUser(user);
		userDocumentService.saveDocument(document);
	}

}