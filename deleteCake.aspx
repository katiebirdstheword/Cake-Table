<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteCake.aspx.cs" Inherits="CakeTable.deleteCake" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
    <title>Delete Cake</title>
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
        <h1>Delete a Cake</h1>
<br />
<br />
        
        <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>

        <br />
        <asp:Button ID="btnLookup" runat="server" Text="Lookup Cake" OnClick="btnLookup_Click" class="btn btn-info" />


        
        <br /><br /><br />

        <fieldset>
            <legend>Cake Information</legend>
      <br /><br />
                 <p style="display:none;"><label for ="ID">ID:</label></p>
<asp:TextBox runat="server" ID="txtID"></asp:TextBox>  
       <br /><br />
            <p><label for ="CakeName">Cake Name:</label></p>
<asp:TextBox runat="server" ID="txtCakeName"></asp:TextBox>
            <br /><br />
            <p><label for ="Flavor">Flavor:</label></p>
<asp:TextBox runat="server" ID="txtFlavor"></asp:TextBox>
       <br /><br />
            <p><label for ="Description">Description:</label></p>
<asp:TextBox runat="server" ID="txtDescription"></asp:TextBox>
            <br /><br />
                        <p><label for ="Price">Price:</label></p>
<asp:TextBox runat="server" ID="txtPrice"></asp:TextBox>
            <br /><br />
                        <p><label for ="CreatedDate">Created Date:</label></p>
<asp:TextBox runat="server" ID="txtCreatedDate"></asp:TextBox>
            <br /><br />
            <p><asp:Button ID="btnDelete" runat="server" Text="Delete Cake" OnClick="btnDelete_Click" class="btn btn-danger"/></p>


      
            
   </fieldset>
        <div>
        </div>
    </form>
           <br /><br />
<asp:Label ID="lbl1" runat="server" Text= ""></asp:Label>
</body>
</html>
