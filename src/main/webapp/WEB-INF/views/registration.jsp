<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>User Registeration</title>

    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<style>
		body {
			padding-top:50px;
			align:center;
			background-image:url("https://www.adu.ac.ae/portals/0/Skins/ADU/support/en-US/img/employment-banner.jpg");
		    background-repeat: no-repeat;
		}
		fieldset {
			border: thin solid #ccc; 
			border-radius: 4px;
			padding: 20px;
			padding-left: 40px;
			background: #fbfbfb;
			
		}
		legend {
		   color: #678;
		}
		.form-control {
			width: 95%;
		}
		label small {
			color: #678 !important;
		}
		span.req {
			color:red;
			font-size: 112%;
		}
		 #btn_s{
		    width:100px;
		    margin-left:auto;
		    margin-right:auto;
		}
		
		#btn_i {
		    width:125px;
		    margin-left:auto;
		    margin-right:auto;
		}
          
		
		</style>
		
  </head>
  <body>
	<div class="container">
	<h3></h3>
	<div class="row">
        <div class="col-md-6">
           	<form:form method="POST" modelAttribute="user" class="form-horizontal">
           				<h1>Register Here</h1>
           	
           	<fieldset><legend class="text-center" style="text-align: "><span class="req"><small></small></span></legend>
           	
			<form:input type="hidden" path="id" id="id"/>
			<div class="row">
				<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="firstname"><span class="req">* </span> First name: </label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="firstName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="lastname"><span class="req">* </span> Last name: </label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="lastName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
				<label class="col-md-3 control-lable" for="ssoId"><span class="req">* </span> Username: </label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
							</c:when>
							<c:otherwise>
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="ssoId" class="help-inline"/>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="password"><span class="req">* </span> Password:</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="password" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email"><span class="req">* </span> Email:</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
			
			 <%-- <div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email"><span class="req">* </span> Roles:</label>
					<div class="col-md-7">
						<form:input type="text" value="type" path="userProfiles" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>  --%>
			
			
			 <div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="userProfiles"><span class="req">* </span> Roles:</label>
					<div class="col-md-7">
						<form:select path="userProfiles" items="${onlyuser}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="userProfiles" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
			<!-- <div class="row">
			<div class="form-group col-md-12">
  				<label><span class="req">* </span> Upload Resume: </label>
				<input type="file" name="fileUpload" size="90" /> 			
		    </div>
		    </div> -->
	       
			 <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

                <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I agree with the <a href="terms.php" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span>
            </div>
			<input value="Reset" title="Cancel" type="reset" id="btn_s"> 
            <input value="Register" title="Register" type="submit" id="btn_i">
		</form:form>


<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
  
</div>
<br>
<br>
<!-- <div ><img src="http://ticketgenie.in/Images/career.png"></div>
<div ><img src="http://www.adlift.com/in/wp-content/themes/adlift/images/career/career-content-img.gif"></div>
<div ><img src="https://media.giphy.com/media/3oEhmDMA4r9GxhwEqA/giphy.gif"></div> -->
 

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script> function checkPass()
    {
						    //Store the password field objects into variables ...
						    var pass1 = document.getElementById('pass1');
						    var pass2 = document.getElementById('pass2');
						    //Store the Confimation Message Object ...
						    var message = document.getElementById('confirmMessage');
						    //Set the colors we will be using ...
						    var goodColor = "#66cc66";
						    var badColor = "#ff6666";
						    //Compare the values in the password field 
						    //and the confirmation field
						    if(pass1.value == pass2.value){
						        //The passwords match. 
						        //Set the color to the good color and inform
						        //the user that they have entered the correct password 
						        pass2.style.backgroundColor = goodColor;
						        message.style.color = goodColor;
						        message.innerHTML = "Passwords Match"
						    }else{
						        //The passwords do not match.
						        //Set the color to the bad color and
						        //notify the user.
						        pass2.style.backgroundColor = badColor;
						        message.style.color = badColor;
						        message.innerHTML = "Passwords Do Not Match!"
						    }
						} 
						function validatephone(phone) 
						{
						    var maintainplus = '';
						    var numval = phone.value
						    if ( numval.charAt(0)=='+' )
						    {
						        var maintainplus = '';
						    }
						    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.S\/<>?|`¬\]\[]/g,'');
						    phone.value = maintainplus + curphonevar;
						    var maintainplus = '';
						    phone.focus;
						}
						// validates text only
						function Validate(txt) {
						    txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
						}
						// validate email
						function email_validate(email)
						{
						var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
						
						    if(regMail.test(email) == false)
						    {
						    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
						    }
						    else
						    {
						    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>";	
						    }
						}
						// validate date of birth
						function dob_validate(dob)
						{
						var regDOB = /^(\d{1,2})[-\/](\d{1,2})[-\/](\d{4})$/;
						
						    if(regDOB.test(dob) == false)
						    {
						    document.getElementById("statusDOB").innerHTML	= "<span class='warning'>DOB is only used to verify your age.</span>";
						    }
						    else
						    {
						    document.getElementById("statusDOB").innerHTML	= "<span class='valid'>Thanks, you have entered a valid DOB!</span>";	
						    }
						}
						// validate address
						function add_validate(address)
						{
						var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;
						  
						    if(regAdd.test(address) == false)
						    {
						    document.getElementById("statusAdd").innerHTML	= "<span class='warning'>Address is not valid yet.</span>";
						    }
						    else
						    {
						    document.getElementById("statusAdd").innerHTML	= "<span class='valid'>Thanks, Address looks valid!</span>";	
						    }
						}
</script>
  </body>
</html>