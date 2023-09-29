using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baiktdknew
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddsanpham_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-171AVQP\\SQLEXPRESS;Initial Catalog=sanpham;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("Addsanpham", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Ten", txtten.Text);
                    command.Parameters.AddWithValue("@Mota", txtmota.Text);
                    command.Parameters.AddWithValue("@Soluongtonkho", Textsoluongtonkho.Text);
                    command.Parameters.AddWithValue("@gia", Convert.ToDecimal(Textgia.Text));
                    command.Parameters.AddWithValue("@Donvitinh", Textdvt.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            Response.Redirect("Trangchu.aspx");
        }
    }
}