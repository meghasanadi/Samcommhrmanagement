<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<html>
<head>
    <title>hr@samcomm</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Saturn is free PSD &amp; HTML template by @flamekaizar">
    <meta name="author" content="Afnizar Nur Ghifari">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    
</head>
<style>
.panel-table .panel-body{
  padding:0;
}

.panel-table .panel-body .table-bordered{
  border-style: none;
  margin:0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align:center;
    width: 100px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
  border-right: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
  border-left: 0px;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td{
  border-bottom: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th{
  border-top: 0px;
}

.panel-table .panel-footer .pagination{
  margin:0; 
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col{
 line-height: 34px;
 height: 34px;
}

.panel-table .panel-heading .col h3{
 line-height: 30px;
 height: 30px;
}

.panel-table .panel-body .table-bordered > tbody > tr > td{
  line-height: 34px;
}


</style>
<body >


<div class="container" >
    <div class="row">
 
        <div class="col-md-10 col-md-offset-1">

            <div>
            <h2 align="center">Job List</h2>
              <div class="panel-heading">
              
                  <div class="row">
         
                   <div class="col col-xs-6 text-right">
                 
                   </div>
                 	<ul align="center">
                      
                      
                    </ul>
                </div>
              </div>
              <div class="panel-body">
              <%@include file="authheader.jsp" %>  
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th class="hidden-xs">JobId</th>
                        <th>Job Name</th>
                    	<th>KeySkills</th>
                    	<th>Location</th>
                    	<!-- <th>Description</th> -->
                    	<th>Experience</th>
                    	<th>JobType</th>
                    	<th>Status</th>
                    </tr> 
                  </thead>
                  <tbody>
                  <c:forEach var="job" items="${listJob}">
                          <tr>
                            <td align="center">
                              <a href="editJob?jobid=${job.jobid}"><em class="fa fa-pencil"></em></a>
                              <a href="deleteJob?jobid=${job.jobid}"><em class="fa fa-trash"></em></a>
                            </td>
                            <td class="hidden-xs">${job.jobid}</td>
                            <td>${job.job_name}</td>
                            <td>${job.keyskills}</td>
                            <td style="width:50px">${job.job_designation}</td>
<%--                              <td style="width:50px">${job.job_description}</td>
 --%>							<td style="width:50px">${job.experience}</td>
							<td style="width:50px">${job.job_type}</td>
							<td style="width:50px">${job.status}</td>
                          </tr>
                     </c:forEach>     
                        </tbody>
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-left">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-left">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                    
                  </div>
                </div>
              </div>
            </div>
            
            <div class="panel-footer">
                <div class="row">
                   <a href="newjob">Click to add new jobs here</a>
            </div>
         
</div></div></div>

	<!-- Javascript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>