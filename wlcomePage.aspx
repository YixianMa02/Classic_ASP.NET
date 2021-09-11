<%@ Language="javascript" %>

<%
    var user = Request.Form("txtUsername");
    var pwd = Request.Form("txtPassword");
    Session("Error")="";

    if (pwd != "ok") {
        Session("Error") = "Wrong Password. Please Try Again !";
        Response.Redirect("index.aspx");
    }

%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>

    <style>
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body style="background-color:#0094ff;">
    
    <h1 class="auto-style2">WELCOME to THE GOOD LIFE!!!</h1>

    Welcome <%=user%> !

</body>
</html>
