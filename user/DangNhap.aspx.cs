using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsCallback)
        {
            lblError.Text = "";
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)Sqllogin.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num > 0)
        {
            User objUser = new User();
            objUser.username = txtusername.Text;
            objUser.password = txtpassword.Text;
            Session.Add("User", objUser);
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblError.Text = "Đăng nhập thất bại";
        }
    }
}