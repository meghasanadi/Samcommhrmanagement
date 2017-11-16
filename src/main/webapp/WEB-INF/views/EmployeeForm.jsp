<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 --%><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
		
		<style>
							#playground-container {
						height: 500px;
						overflow: hidden !important;
						-webkit-overflow-scrolling: touch;
					}
					body, html{
						 height: 100%;
						background-repeat: no-repeat;
						background:url(https://i.ytimg.com/vi/4kfXjatgeEU/maxresdefault.jpg);
						font-family: 'Oxygen', sans-serif;
							background-size: cover;
					}

					.main{
						margin:50px 15px;
					}

					h1.title { 
						font-size: 50px;
						font-family: 'Passion One', cursive; 
						font-weight: 400; 
					}

					hr{
						width: 10%;
						color: #fff;
					}

					.form-group{
						margin-bottom: 15px;
					}

					label{
						margin-bottom: 15px;
					}

					input,
					input::-webkit-input-placeholder {
						font-size: 11px;
						padding-top: 3px;
					}

					.main-login{
						background-color: #fff;
						/* shadows and rounded borders */
						-moz-border-radius: 2px;
						-webkit-border-radius: 2px;
						border-radius: 2px;
						-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
						-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
						box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

					}
					.form-control {
						height: auto!important;
					padding: 8px 12px !important;
					}
					.input-group {
						-webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
						-moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
						box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
					}
					#button {
						border: 1px solid #ccc;
						margin-top: 28px;
						padding: 6px 12px;
						color: #666;
						text-shadow: 0 1px #fff;
						cursor: pointer;
						-moz-border-radius: 3px 3px;
						-webkit-border-radius: 3px 3px;
						border-radius: 3px 3px;
						-moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
						-webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
						box-shadow: 0 1px #fff inset, 0 1px #ddd;
						background: #f5f5f5;
						background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
						background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
					}
					.main-center{
						margin-top: 30px;
						margin: 0 auto;
						max-width: 400px;
						padding: 10px 40px;
						background:#009edf;
							color: #FFF;
						text-shadow: none;
						-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
					-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
					box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

					}
					span.input-group-addon i {
						color: #009edf;
						font-size: 17px;
					}

					.login-button{
						margin-top: 5px;
					}

					.login-register{
						font-size: 11px;
						text-align: center;
					}

		</style>
	</head>
	<body>
		<div class="container">
		

			<div class="row main">


				<div class="main-login main-center">
				<h4 align="center">Add/Edit New Jobs</h4>
					<form:form action="saveJob" method="post" modelAttribute="job">
					
					 <form:hidden path="id"/>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Jobid</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<%--  <form:hidden path="jobid"/> --%>
									<td><form:input path="jobid" /></td>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Job Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<td><form:input path="job_name" /></td>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Key Skills</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<td><form:input path="keyskills" /></td>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Location</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<td><form:input path="job_designation" /></td>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<td><form:textarea path="job_description" /></td>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Short Description(50 word only)</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<td><form:textarea path="shortdescription" /></td>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Experience</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<td><form:input path="experience" /></td>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Job Type</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<td><form:input path="job_type" /></td>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Status</label>
							<div class="cols-sm-10">
								<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								<form:input path="status" />						
								<%-- <div class="input-group">
									<select>
										  <option value="volvo">Active</option>
										  <option value="saab">Inactive</option>
									</select>	  
									<form:input path="status" />
								</div> --%>
							</div>
						</div>
						

						<div class="form-group ">
<!-- 							<a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">SAVE</a>
 -->							<input type="submit" value="Save"></td> <button type="reset" value="Reset">Cancel</button>
						</div>
						
					</form:form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</body>
</html>