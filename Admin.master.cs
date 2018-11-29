using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Session("User"))   
        Ad ad = (Ad)Session["Ad"];
        if (ad != null)
        {
            lbTen.Text = ad.Username;
        }
    }

    protected void btnDangXuat_Click(object sender, EventArgs e)
    {
        Session.Remove("Ad");
    }
}
