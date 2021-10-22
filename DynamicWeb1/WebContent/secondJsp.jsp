<%-- 
    Document   : secondJsp.jsp
    Created on : 23 Jul, 2018, 5:39:03 AM
    Author     : an
--%>

 
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
 
 

<h3>AuthorNAmes</h3>
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
 console.log( " authorform.authorname:" + document.getElementById("authorname")  )
 document.getElementById("authorname").value="pluto" 
 </script>
        
</body>
</html>
