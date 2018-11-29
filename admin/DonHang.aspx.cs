using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_DonHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void FileUpload1_DataBinding(object sender, EventArgs e)
    {
    }

    protected void FileUpload1_Load(object sender, EventArgs e)
    {
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void gvDonHang_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblThongBao.Text = "<b>Một lỗi xả ra khi xoá dữ liệu.<b/>";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblThongBao.Text = "Một người dùng khác có thể đang cập nhật dữ liệu.<br/>Cố gắng thử lại";
        }
    }

    protected void gvDonHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblThongBao.Text = "";
    }
}