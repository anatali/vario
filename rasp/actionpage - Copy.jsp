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
         
        <h2> This is : actionpage.jsp</h2> 
        <div>
            <h4>Host Name & IP Address: <span><%=  hostName %></span></h4>
            <h4>JVM Name: <span><%=  serverName %></span></h4>
            <h4> Date & Time: <span> <%= Dtime %> </h4>
        </div>
		<h4>HTTP Request URL : <span><%= request.getRequestURL() %></span></h4>
		<h4>HTTP Request Method : <span><%= request.getMethod() %></span></h4>
		 
		  <h2>--DataFlair--</h2>
  <h2>GET Method to Read Form Data Using URL</h2>
  <ul>
               <li><p><b>First Name:</b>
                              <%= request.getParameter("fname")%>
               </p></li>
               <li><p><b>Last  Name:</b>
                              <%= request.getParameter("lname")%>
               </p></li>
  </ul>

		BYE from actionpage.jsp
		</body>
</html>


 
 