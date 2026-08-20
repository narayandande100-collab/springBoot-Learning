<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>student enrollment form</h2>

<form:form action="save" modelAttribute="Student" method= "post">

<table>

 <tr>
   <td> Enter Name : </td>
   <td> <form:input path="name"/> </td>
 </tr>
 
 <tr>
   <td> Enter email : </td>
   <td> <form:input path="email"/> </td>
 </tr>
 
 <tr>
   <td> Enter Address : </td>
   <td> <form:input path="address"/> </td>
 </tr>
 
 <tr>
   <td> Enter Qualification : 
   
   </td>
   
   <td> 
     <form:select path=""> 
        <form:option value="BCS"> BCS</form:option>
        <form:option value="BCA"> BCA</form:option>
        <form:option value="MCA"> MCA</form:option>
        <form:option value="MCS"> BCS</form:option>
     </form:select> 
   </td>
 </tr>
 
 <tr>
   <td>
        Gender: 
   </td>
   <td> 
       <form:radiobutton path="gender" value= "Male"/> Male
       <form:radiobutton path="gender" value= "Female"/> Female
   </td>
 </tr>
 
 <tr>
   <td>choose course : 
   
   </td>
   
   <td> 
     <form:select path="course"> 
        <form:option value="BCS"> full stack java developer</form:option>
        <form:option value="BCA"> core java and advanced java</form:option>
        <form:option value="MCA"> python with backend django</form:option>
        <form:option value="MCS"> data analyst and Machine learning</form:option>
     </form:select> 
   </td>
 </tr>
 
 <tr>
 
</table>

<input type = "submit" value= "save" >

</form:form>

</body>
</html>