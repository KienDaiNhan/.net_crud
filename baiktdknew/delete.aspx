<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="baiktdknew.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
         <div><asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="True"></asp:GridView></div>
    <div>
         <h1>Xoa san pham</h1>
         <div>
             <label for="txtID">ID:</label>
             <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
         </div>    
         <asp:Button ID="Deletesanpham" runat="server" Text="Xoa" OnClick="btnDeletesanpham_Click" />
     </div>
 </form>
</body>
</html>
