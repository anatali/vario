<html>
<title>Java bean example in jsp</title>
<head>
<h1>Java bean example in jsp</h1>
<hr></hr>
</head>
<body>
<jsp:useBean id="mybean" class="my.MyBean" scope="session" >
               <jsp:setProperty name="mybean" property="name" value=" Hello world" />
    </jsp:useBean>

<h1> <jsp:getProperty name="mybean" property="name" /></h1>
</body>
</html>