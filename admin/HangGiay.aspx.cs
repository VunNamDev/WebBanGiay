using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_HangGiay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnThemHang_Click(object sender, EventArgs e)
    {

    }

    protected void gvHangGiay_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvHangGiay_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "Một số lỗi xảy ra khi xóa dữ liệu.";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "Một người dùng khác có thể đang cập nhật dữ liệu." + "<br /> Cố gắng thử lại.";
        }
    }

    protected void gvHangGiay_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "Một số lỗi xảy ra khi sửa dữ liệu.";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "Một người dùng khác có thể đang cập nhật dữ liệu." + "<br />Cố gắng thử lại.";
        }
    }

    protected void gvHangGiay_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblError.Text = "";
    }

    protected void btnThemHang_Click1(object sender, EventArgs e)
    {

    }
}