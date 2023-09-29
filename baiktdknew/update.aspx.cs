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
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }

        }
        private void BindProducts()
        {
            string connectionString = "Data Source=DESKTOP-171AVQP\\SQLEXPRESS;Initial Catalog=sanpham;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("listsanpham", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    gvProducts.DataSource = reader;
                    gvProducts.DataBind();
                }
            }
        }
        protected void btnUpdatesanpham_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtID.Text, out int ID))
            {
                string connectionString = "Data Source=DESKTOP-171AVQP\\SQLEXPRESS;Initial Catalog=sanpham;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("Updatesanpham", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ID", ID);
                        command.Parameters.AddWithValue("@Ten", txtName.Text);
                        command.Parameters.AddWithValue("@Mota", txtmota.Text);
                        command.Parameters.AddWithValue("@Soluongtonkho", txtsoluongtonkho.Text);
                        command.Parameters.AddWithValue("@gia", Convert.ToDecimal(txtgia.Text));
                        command.Parameters.AddWithValue("@Donvitinh", txtdvt.Text);
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