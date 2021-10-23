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
    <body>
  
  <h2>Finding Author</h2>
  
 <% String inputPrefix = request.getParameter("authorname"); 
    if( inputPrefix == null ) inputPrefix="0";
    System.out.println("firstJsp| inputPrefix ... "+ inputPrefix);
    String fullName = "";
    try{
       fullName  = request.getAttribute("fullName").toString();  
       System.out.println("firstJsp| fullName ... "+ fullName);
       // if( fullName == null ) fullName="";
    }catch(Exception e){
    	System.out.println("firstJsp| ERROR on attribute fullName" );
    }
 %>
 
 
<h3>Prova AuthorNames</h3>
 <form action=<%= response.encodeURL ("S1") %> id="authorform" name="authorform" method="post">
  <label for="authorname">Find author:</label><br>
  <input type="text" id="authorname" name="authorname" value="" oninput="submit()"  />
</form>  

 <script>
	 //console.log( "authorname:" + document.getElementById("authorname")  )
	 //console.log( "inputPrefix:" +  "<%=fullName%>"   )
	  document.getElementById("authorname").value="<%=fullName%>"
 </script>


   
 <jsp:useBean id="author" class = "action.AuthorNames" /> 
 <jsp:setProperty  name="author" property='prefix' value="<%=inputPrefix%>" /> 
 <p> For prefix <%= inputPrefix %> found : <jsp:getProperty name="author" property='uniqueName' />   
 </p>
  
  <!-- posso fare forward anche da qui sp:forward page="firstJsp.jsp" /> -->
 
</html>


 
 