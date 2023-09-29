<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="baiktdknew.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
    <h1>Add Product</h1>
    <asp:TextBox ID="txtten" runat="server" placeholder="Nhap Ten ..."></asp:TextBox><br />
    <asp:TextBox ID="txtmota" runat="server" placeholder="Mo Ta ..."></asp:TextBox><br />
           <asp:TextBox ID="Textsoluongtonkho" runat="server" placeholder="SL Ton Kho ..."></asp:TextBox><br />
           <asp:TextBox ID="Textgia" runat="server" placeholder="Nhap Gia ..."></asp:TextBox><br />
           <asp:TextBox ID="Textdvt" runat="server" placeholder="DVT ..."></asp:TextBox><br />
    <asp:Button ID="btnAddsanpham" runat="server" Text="Add sanpham" OnClick="btnAddsanpham_Click" />
</div>
    </form>
</body>
</html>
