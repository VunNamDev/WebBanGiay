using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Giay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

   

    protected void btnThem_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThemGiay.aspx");
    }

    protected void grdGiay_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "Có lỗi xảy ra khi sửa dữ liệu";
            e.ExceptionHandled = true;
        }
        else if(e.AffectedRows==0)
        {
            lblError.Text = "Có người dùng khác đang cập nhât dữ liệu";
        }
    }

    protected void grdGiay_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblError.Text = "";
    }

    protected void grdGiay_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "Có lỗi xảy ra khi xóa dữ liệu";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "Có người dùng khác đang cập nhât dữ liệu";
        }
    }
}