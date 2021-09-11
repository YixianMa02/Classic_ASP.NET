<%@ Language="javascript" %>

<%
    var customer = Request.Form("custName");
    var gender = Request.Form("gender");
    var color = Request.Form("vestColorSelect");
    var size = Request.Form("vestSizeSelect");
    
    var itemTie = Request.Form("CheckboxTie");
    var itemPants = Request.Form("ChectboxPants");
    var itemShirt = Request.Form("CheckboxShirt");
    var subTotal = 0;

    if (itemTie == "Tie" && itemPants == "Pants" && itemShirt == "Shirt") {
        subTotal = 30 + 100 + 75 + 500;
    } else if (itemTie == "Tie" && itemPants == "Pants") {
        subTotal = 30 + 100 + 500;
    } else if (itemTie == "Tie" && itemShirt == "Shirt") {
        subTotal = 30 + 75 + 500;
    } else if (itemPants == "Pants" && itemShirt == "Shirt") {
        subTotal = 75 + + 100 + 500;
    } else if (itemTie == "Tie") {
        subTotal = 30 + 500;
    } else if (itemPants == "Pants") {
        subTotal = 100 + 500;
    } else if (itemShirt == "Shirt") {
        subTotal = 75 + 500;
    } else {
        subTotal = 500;
    }

    var tax = subTotal * 0.15;
    var total = subTotal + tax;
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TMF Order Confirmation</title>
    <style>
        .center {
            text-align:center;
        }
    </style>
</head>
<body>
    <h1 class="center">TOMMY - MY - FINGER</h1>
    <h2 class="center">Order Confirmation</h2>
    <hr />

    <%=gender%> <%=customer%>, Your order for a <%=color%> <%=size%> vest with ( <%=itemTie%> <%=itemPants%> <%=itemShirt%> ) is been processed.<br />
    Sub Total: <%=subTotal%>$<br />
    Tax (15%): <%=tax%>$<br />
    Total : <%=total%>$

</body>
</html>
