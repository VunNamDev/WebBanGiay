using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User user = new User();
         user = (User)Session["User"];
        
        if (user != null)
        {
            lblTen.Text = user.username;
            btnDangNhap.Enabled = false;
            btnDangKy.Enabled = false;
            btnDangXuat.Enabled = true;
            btnLichSu.Enabled = false;
        }
        else
        {
            lblTen.Text = "đến với Myshoes.vn - Giày Chính Hãng!";
            btnDangNhap.Enabled = true;
            btnDangKy.Enabled = true;
            btnDangXuat.Enabled = false;
            btnLichSu.Enabled = true;
        }
    }

    protected void btnDangXuat_Click(object sender, EventArgs e)
    {
        Session.Remove("User");
        Response.Redirect("/user/Home.aspx");
    }

    protected void btnTim_Click(object sender, EventArgs e)
    {
        Response.Redirect("TimKiem.aspx?tenHang=" + txtTimKiem.Text);
    }
}
