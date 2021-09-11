<%@ Page Language="javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TMF</title>
    <script type="text/javascript">
        //function check() {
            //if (document.getElementById("custName").value == "") {
                //alert("Please enter your name !");

                //return false;
           // }
         //   return true;
       // }
    </script>
    <style>
        .center {
            text-align:center;
        }
        div {
            background-color: darkblue;
        }
        .column1 {
            margin-top: 5px;
            float: left;
            width: 35%;
            height: 305px;
        }
        .column2 {
            margin-top: 5px;
            float: right;
            width: 65%;
            height: 305px;
        }
        .row {
            border: 4px solid red; 
            color: white;
            margin: auto;
            width: 35%;
            height: 310px;
        }
        #Order {
            margin-left: 5%;
        }
        #Clear {
            width: 50px;
            margin-left: 45%;
        }
</style>
</head>
<body>
    <h1 class="center">TOMMY - MY - FINGER</h1>
    <h2 class="center">Vest Online Sale</h2>
    <hr />
    <marquee style="background-color:darkblue; color:red;">blowout Sale $500 for a vest, the sale finishes this week hurry up do not miss it. Thank you. Merci</marquee>
    <hr />
    <form id="form1" runat="server" action="confirmOrder.aspx" method="post" onsubmit="check()">
        <div class="row">
            <div class="column1">
                <p style="margin-top: 0px;">Customer: </p>
                <p style="margin-top: 30px;">Gender: </p>
                <p style="margin-top: 30px;">Vest Color: </p>
                <p>Vest Size: </p><br />
                <p style="margin-top: 25px;">Accessories: </p><br />
                <input id="Order" type="submit" value="Order Now"/>
            </div>

            <div class="column2">
                <input id="custName" type="text" name="custName" style="width:80%;"/>
                <p>
                    <input id="femaleCust" name="gender" type="radio" value="Miss"/> Female <br />
                    <input id="maleCust" name="gender" type="radio" value="Mister"/> Male
                </p>
                <select id="vestColorSelect" name="vestColorSelect" style="width:70%;">
                    <option>Black</option>
                    <option>White</option>
                    <option>Blue</option>
                    <option>Red</option>
                    <option>Green</option>
                </select><br />
                <select id="vestSizeSelect" name="vestSizeSelect" style="width:70%;" size="3" >
                    <option>Small</option>
                    <option>Medium</option>
                    <option>Large</option>
                </select>
                <p>
                    <input id="CheckboxTie" name="CheckboxTie" type="checkbox" value="Tie"/>Tie(30$)<br />
                    <input id="CheckboxPants" name="ChectboxPants" type="checkbox" value="Pants"/>Pants(100$)<br />
                    <input id="CheckboxShirt" name="CheckboxShirt" type="checkbox" value="Shirt"/>Shirt(75$)
                </p>
                <input id="Clear" type="reset" value="Clear" />
            </div>     
        </div>   
    </form>
</body>
</html>
