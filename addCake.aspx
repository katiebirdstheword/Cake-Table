<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCake.aspx.cs" Inherits="CakeTable.addCake" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Add a Cake</title>
    <script>
        function validateForm() {
            var x = document.forms["form1"]["txtCakeName"].value;
            if (x == "") {
                alert("Cake Name must be filled out");
                return false;
            }
        }
    </script>
    <style>
    body {
        max-width:500px;
        margin:auto;
        padding:10px;
        text-align:center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm()">
                <div>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
        <Items>
            
            <asp:MenuItem NavigateUrl="~/viewAll.aspx" Text="View Cakes" Value="View Cakes"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/addCake.aspx" Text="Add Cakes" Value="Add Cakes"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/updateCake.aspx" Text="Update Cakes" Value="Update Cakes"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/deleteCake.aspx" Text="Delete Cake" Value="Delete Cake"></asp:MenuItem>
        </Items>
    </asp:Menu>
</div>
        <br />
        <h1>Add a Cake</h1>

        <fieldset>
            
            <legend>Cake Information</legend>

            
            <br /><br />
              <p><label for= "CakeName">Cake Name:</label></p>
                <asp:TextBox runat="server" ID="txtCakeName" />
            <br /><br />
            <p><label for ="Flavor">Flavor:</label></p>
            <asp:TextBox runat="server" ID="txtFlavor" />
            <br /><br />
            <p><label for ="Description">Description:</label></p>
            <asp:TextBox runat="server" ID="txtDescription" />
            <br /><br />
            <p><label for ="Price">Price:</label></p>
            <asp:TextBox runat="server" ID="txtPrice" />
            <br /><br />
             <p><label for ="CreatedDate">Created Date:</label></p>
             <asp:TextBox runat="server" ID="txtCreatedDate" />
            <br /><br />
            <p><asp:Button Text="Add Cake" runat="server" ID="btnSave" OnClick="btnSave_Click" Cssclass="btn btn-success"/></p>


        </fieldset>
        </form>
    <br /><br />
    <asp:Label runat="server" Id="lbl1"></asp:Label>
</body>
</html>
