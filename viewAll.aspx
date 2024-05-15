<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAll.aspx.cs" Inherits="CakeTable.viewAll" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>View All</title>
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
    
    <form id="form1" runat="server">
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
        <h1>View all Cakes</h1>
<br />
<br />
        <div>
        </div>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
