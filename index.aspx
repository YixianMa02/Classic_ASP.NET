<%@ Page Language="javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Classical ASP</title>
    <script type="text/javascript">
        function verify() {
            //let username = document.forms["form2"]["txtUsername"].value;
            //let password = document.forms["form2"]["textPassword"].value;

            if (document.getElementById("txtUsername").value == "" && document.getElementById("txtPassword").value == "") {
                document.getElementById("parError").innerHTML = "Please enter the Username and Password !";
                return false;
            }
            if (document.getElementById("txtUsername").value == "") {
                document.getElementById("parError").innerHTML = "Please enter the Username !";
                return false;
            }
            if (document.getElementById("txtPassword").value == "") {
                document.getElementById("parError").innerHTML = "Please enter the Password !";
                return false;
            }

            return true;
        }

        function clear() {

        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            background-color: #3ec3ab;
            text-align: center;
        }

        .auto-style2 {
            text-align: center;
        }

        #btnClear {
            width: 200px;
        }

        #btnEnter {
            width: 50px;
        }
    </style>
</head>
<body>

    <h1 class="auto-style2"><u>LIONS-CLUB</u></h1>

    <form action="wlcomePage.aspx" method="post" id="form2" runat="server" onsubmit="return verify()">

        <table class="auto-style1" align="center">
            <tr>
                <td>
                    <label>Username: </label>
                </td>
                <td>
                    <input id="txtUsername" type="text" name="txtUsername" style="width: 200px; border-radius: 15px;" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Password: </label>
                </td>
                <td>
                    <input id="txtPassword" type="password" name="txtPassword" style="width: 200px; border-radius: 15px;" />
                </td>
            </tr>

            <tr>
                <td>
                    <input id="btnEnter" type="submit" value="Enter" />
                </td>
                <td>
                    <input id="btnClear" type="reset" value="Clear" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <p id="parError" style="color: red; font-weight: bold;"><%=Session("Error")%></p>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>