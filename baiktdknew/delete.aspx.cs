using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baiktdknew
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDeletesanpham_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtID.Text, out int ID))
            {
                string connectionString = "Data Source=DESKTOP-171AVQP\\SQLEXPRESS;Initial Catalog=sanpham;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("Deletesanpham", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ID", ID);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                Response.Redirect("Trangchu.aspx");
            }
            else
            {

            }
        }
    }
}