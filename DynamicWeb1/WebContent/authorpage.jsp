<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>
 
 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
        <title>Action</title>
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
         
   		 
 
  <h2>Findind Author</h2>
  
 
 <% String inputPrefix = request.getParameter("authorname"); %>
  inputPrefix:  <%= inputPrefix %>
 
 <jsp:useBean id="author" class = "action.AuthorNames" /> 
 <jsp:setProperty  name="author" property='prefix' value="<%=inputPrefix%>" /> 
 <p> For prefix <%= inputPrefix %> found : <jsp:getProperty name="author" property='uniqueName' />  
 </p>
 


		<jsp:forward page="firstJsp.jsp" />
		</body>
</html>


 
 