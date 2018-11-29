using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("Ad");
        if (!IsCallback)
        {
            lblError.Text = "";
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlAdmin.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num > 0)
        {
            lblError.Text = "";
            Ad objAd = new Ad();
            objAd.Username = txtEmail.Text;
            objAd.Password = txtpass.Text;
            Session.Add("Ad", objAd);
            Response.Redirect("TongQuan.aspx");
        }
        else
        {
            lblError.Text = "Đăng nhập thất bại";
        }

    }
}