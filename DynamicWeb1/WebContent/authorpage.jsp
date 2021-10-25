<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>
 
 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
        <title>AuthorPage</title>
    </head>
    <body> <!--   onload="switchPage()"  -->
  
  <h2>Finding Author</h2>
  
 <% String fullName      = "";
    String fullNameFound = "";
    try{
       fullName       = request.getAttribute("fullName").toString();  
       System.out.println("authorpage| fullName ... "+ fullName);
       fullNameFound  = request.getAttribute("fullNameFound").toString();  
       System.out.println("authorpage| fullNameFound ... "+ fullNameFound);
    }catch(Exception e){ //first load ...
    	System.out.println("authorpage | ERROR " + e.getMessage() );
    }
 %>
 
 <script>
  function switchPage(){	 	  
	 var found = <%= fullNameFound.length() %> > 0;
	 if( found ){		 
		 //alert(" switchPage fullName=" + "<%=fullName%>" + " found=" +  found + " location=" + location);
		 location.replace("http://localhost:8080/DynamicWeb1/secondJsp.jsp?author='<%=fullName%>'" );		  
	 }else{
		 alert("warning: no author name yet!"    );
	 }	 
  }
 
 </script>
 
 <form action=<%= response.encodeURL ("S1") %> id="authorform" name="authorform" method="post">
  <label for="authorname">Insert author name:</label><br>
  <input type="text" id="authorname" name="authorname" value="" oninput="submit()"  />
</form>  <button onclick="switchPage()">SUBMIT</button>
  
 <script>
	 //console.log( "authorname:" + document.getElementById("authorname")  )
	  //console.log( "fullName:" +  "<%=fullName%>"  +  " fullNameFound:" +  "<%=fullNameFound%>" )
	  document.getElementById("authorname").value="<%=fullName%>";
	  //switchPage();
 </script>
 
 </p>
  
  <!-- posso fare forward anche da qui sp:forward page="firstJsp.jsp" /> -->
 
</html>


 
 