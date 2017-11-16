 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Employee</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="app">
        <table>
            <form:hidden path="id"/>
           
            <tr>
                <td>First Name:</td>
                <td><form:input path="firstname" /></td>
            </tr>
            
             <tr>
                <td>Last Name:</td>
                <td><form:input path="lastname" /></td>
            </tr>
            
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            
            
            <tr>
                <td>Contact No:</td>
                <td><form:input path="phoneno" /></td>
            </tr>
            
             <tr>
                <td>Date of Birth:</td>
                <td><form:input path="dob" /></td>
            </tr>
            
             <tr>
                <td>Select Gender</td>
                <td><form:checkboxes path="gender" items="${genders}"/></td>
            </tr> 
            
             <tr>
                <td>position/JobId:</td>
                <td><form:input value="${jobid}" path="firstname" /></td>
            </tr>
            
             <tr>
                <td>Salary Expectation</td>
                <td><form:input path="salary_exp" /></td>
            </tr>
            
             <tr>
                <td>PanCard Number</td>
                <td><form:input path="pancard" /></td>
            </tr>
            
             <tr>
                <td>Current Company</td>
                <td><form:input path="curcompany" /></td>
            </tr>
            
            <tr>
                <td>Notice period:</td>
                <td><form:select path="noticeperiod">
                      <form:option value="" label="...." />
                      <form:options items="${noticeperiod}" />
                       </form:select>
                </td>
            </tr>
            
             <tr>
                <td>Comment (limit:100 words)</td>
                <td><form:textarea path="comments" /></td>
            </tr>
            
            <tr>
                <form:hidden value="Applied" path="applied"/>
            </tr>
            
             
           
           
            
                    
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Employee</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="app">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="firstname" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="lastname" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Telephone:</td>
                <td><form:input path="phoneno" /></td>
            </tr>
                    
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html> --%>