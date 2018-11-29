using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
public partial class user_ChiTietDoiGiay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Remove("sl");
        }
          
        
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
       
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label lblLoi = (Label)frmChiTiet.FindControl("lblLoi");
        lblLoi.Text = "";
        Button Button1 = (Button)frmChiTiet.FindControl("Button1");
        Session.Add("sl", Button1.Text);

        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + Button1.Text + "')", true);
    }

    protected void btnThemHang_Click(object sender, EventArgs e)
    {
        Label lblLoi = (Label)frmChiTiet.FindControl("lblLoi");

        try
        {
            lblLoi.Text = "";
            if (Session["User"] != null)
            {
                
                HangChon h = new HangChon();
                Label giaLabel = (Label)frmChiTiet.FindControl("giaLabel");

                Label tenHangLabel0 = (Label)frmChiTiet.FindControl("tenHangLabel0");
                Label maHangLabel = (Label)frmChiTiet.FindControl("maHangLabel");
                Label lblSL = (Label)frmChiTiet.FindControl("lblSL");
                h.Gia = float.Parse(giaLabel.Text);
                h.MaHang = maHangLabel.Text;
                h.Size = float.Parse((string)Session["sl"]);
                h.SoLuong = int.Parse(lblSL.Text);
                h.TenHang = tenHangLabel0.Text;
                GioHang gio;
                if (Session["giohang"] == null)
                {
                    gio = new GioHang();
                }
                else
                {
                    gio = (GioHang)Session["giohang"];
                }
                gio.themHang(h.MaHang, h.TenHang, h.Gia, h.SoLuong, h.Size);
                Session["giohang"] = gio;
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
            

        }
        catch (Exception ex)
        {
       
            lblLoi.Text = "Chọn zise";
        }
        




    }

    protected void btnCong_Click(object sender, EventArgs e)
    {
        Label lblSL = (Label)frmChiTiet.FindControl("lblSL");
        int slg = int.Parse(lblSL.Text);
       
            lblSL.Text = slg + 1 + "";

    }

    protected void btnTru_Click(object sender, EventArgs e)
    {
        Label lblSL = (Label)frmChiTiet.FindControl("lblSL");
        int slg = int.Parse(lblSL.Text);
        if (slg > 1)
        {
            lblSL.Text = slg - 1 + "";
        }
    }
}