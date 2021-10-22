<%-- 
    Document   : index.jsp
    Created on : 23 Jul, 2018, 5:39:03 AM
    Author     : aksarav
--%>

<!--  
curl -X GET  localhost:8080/index.html 
curl -d "{\"fname\":\"mario\", \"lname\": rossi}"  -X POST  localhost:8080/DynamicWeb1/actionpage.jsp -->       
 -->
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
        
        <%
            String hostName;
            String serverName;
            Date Time;
            String Dtime;
            hostName = InetAddress.getLocalHost().getHostName()+" with IP="+InetAddress.getLocalHost().getHostAddress()+" ";
            serverName = System.getProperty("weblogic.Name");
            Time = new Date();
            Dtime = Time.toString();
            %>
        
        <h2> This is a Sample Web Application </h2>
        <hr>
          <h4>HTTP Request Method : <span><%= request.getMethod() %></span></h4>
 
 The form-handler is typically a file on the server with a script for processing input data.
 <!-- curl -d "{\"fname\":\"mario\", \"lname\": rossi}"  -X POST  raspberrypi.local:8080/SampleWebApp/actionpage.jsp -->       

 <form action="actionpage.jsp" method="post">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>     
           
		   <!-- https://dotnettutorials.net/lesson/javabeans-in-jsp/   jar -xvf sample.war -->
		   <h3>Using Beans</h3>
		   

<jsp:useBean id = "date" class = "java.util.Date" /> 
<p>The date/time is <%= date %> 

<jsp:useBean id = "date1" class = "java.util.Date" scope="session" /> 
<p>The date/time is <%= date1 %> 

<h3>Prova Bean</h3>
<jsp:useBean id="time" class = "action.CurrentTimeBean" > 
</jsp:useBean>
 
 <p>Sono le ore
 <jsp:getProperty name="time" property='hours'/> e
 <jsp:getProperty name="time" property='minutes'/> minuti.
</p>         


<h3>Prova AuthorNAmes</h3>
 <form action="authorpage.jsp" id="authorform" name="authorform" method="post">
  <label for="authorname">Find author:</label><br>
  <input type="text" id="authorname" name="authorname" value="" oninput="submit()"><br>
</form>  

 <% String inputPrefix = request.getParameter("authorname"); 
    if( inputPrefix == null ) inputPrefix="0";
    System.out.println(" inputPrefix ... "+ inputPrefix);
    String fullName    = "";
 %>
   
 <jsp:useBean id="author" class = "action.AuthorNames" /> 
 <jsp:setProperty  name="author" property='prefix' value="<%=inputPrefix%>" /> 
 <p> For prefix <%= inputPrefix %> found : <jsp:getProperty name="author" property='uniqueName' />  
 </p>
 
 
 <script>
 console.log( "authorname:" + document.getElementById("authorname")  )
 console.log( "authorname:" + document.getElementById("authorname")  )
 //document.getElementById("authorname").value=<jsp:getProperty name="author" property='uniqueName' /> 
 </script>
        
</body>
</html>
