<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="baiktdknew.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td>
                 <a href="add.aspx">ADD</a>
            </td>
            <td>
              <a style="padding:0px 20px 0px 20px" href="update.aspx">Update</a>
             </td>          
        </tr>
    </table>
     <div>
        <h1>Product Trang Chủ</h1>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="True"></asp:GridView>
    </div>
</form>

</body>
</html>
