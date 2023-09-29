<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="baiktdknew.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
         <div><asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="True"></asp:GridView></div>
    <div>
         <h1>Update San Pham</h1>
         <div>
             <label for="txtID">ID:</label>
             <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
         </div>

         <div>
             <label for="txtName">Ten:</label>
             <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
         </div>

            <div>
             <label for="txtmota">Mo Ta:</label>
              <asp:TextBox ID="txtmota" runat="server"></asp:TextBox>
              </div>

        <div>
    <label for="txtsoluongtonkho">So Luong Ton Kho:</label>
    <asp:TextBox ID="txtsoluongtonkho" runat="server"></asp:TextBox>
</div>
         <div>
             <label for="txtgia">Gia:</label>
             <asp:TextBox ID="txtgia" runat="server"></asp:TextBox>
         </div>
         <div>
    <label for="txtdvt">DVT:</label>
    <asp:TextBox ID="txtdvt" runat="server"></asp:TextBox>
</div>
         <asp:Button ID="Updatesanpham" runat="server" Text="Luu" OnClick="btnUpdatesanpham_Click" />
     </div>
 </form>
</body>
</html>
