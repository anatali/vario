<%-- 
    Document   : welcome
    Created on : 23 Jul, 2018, 5:39:03 AM
    Author     : aksarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
        <title>Sample Web Application   </title>
        <style>
            body{
                font-family: 'Open Sans', sans-serif;
            }
            table,td,tr{
                border: 1px solid;
                border-collapse: collapse;
            }
            span{
                font-weight: normal;
                font-size: 16px;
                color: black;
            }
            </style>
    </head>
    <body>
  
 <form action="/SampleWebApp/actionpage.jsp" method="post">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>     
           
		   <!-- https://dotnettutorials.net/lesson/javabeans-in-jsp/   jar -xvf sample.war -->
		   <h3>Using Beans</h3>
<jsp:useBean id="mybean" class="my.MyBean" scope="session" >
<jsp:setProperty name="mybean" property="name" value=" Hello world" />
</jsp:useBean>
<h1> <jsp:getProperty name="mybean" property="name" /></h1>
 	   

<jsp:useBean id = "date" class = "java.util.Date" /> 
<p>The date/time is <%= date %> 

<jsp:useBean id = "date1" class = "java.util.Date" scope="session" /> 
<p>The date/time is <%= date1 %> 



         
        
</body>
</html>
