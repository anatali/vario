<%-- 
    Document   : secondJsp.jsp
    Created on :  
    Author     : an
--%>

 
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
        <title>SecondJsp</title>
     </head>
    <body>
 
 

<h3>SecondJsp</h3>
 
 <%  String authorName="unknown";
     try{
       authorName = request.getParameter("author").toString();  
       System.out.println("SecondJsp | authorName="+ authorName);
     }catch(Exception e){ //first load ...
    	System.out.println("SecondJsp | ERROR " + e.getMessage() );
    }
 %>
    <p>authorName=<%= authorName%></p>
        
</body>
</html>
