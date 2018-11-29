using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GioHang gioHang;
        if (Session["giohang"] == null)
        {
            gioHang = new GioHang();

        }
        else
        {
            gioHang = (GioHang)Session["giohang"];

        }
        if (!IsPostBack)
        {
            BindGrid(gioHang);

        }

    }
    public void BindGrid(GioHang gioHang)
    {
        GridView1.DataSource = gioHang.hang;
        GridView1.DataBind();
        lblTongTien.Text = gioHang.TongTien.ToString();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int dem = Convert.ToInt32(e.CommandArgument);
            string maGiay = GridView1.Rows[dem].Cells[0].Text;
            TextBox txtSL = (TextBox)GridView1.Rows[dem].FindControl("txtSL");
            int sl = Convert.ToInt32(txtSL.Text);
            GioHang gio;
            if (Session["giohang"] == null)
            {
                gio = new GioHang();

            }
            else
            {
                gio = (GioHang)Session["giohang"];

            }
            int rowID = gio.layGiaTri(maGiay);
            gio.capNhat(dem, sl);
            BindGrid(gio);
            Session["giohang"] = gio;
        }
        catch (Exception)
        {
            lblThongBao.Text = "Có lỗi xảy ra";
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("ThanhToan.aspx");
        }
        catch (Exception)
        {
            lblThongBao.Text = "Có lỗi xảy ra";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            Session.Remove("giohang");
            Response.Redirect("GioHang.aspx");
        }
        catch (Exception)
        {
            lblThongBao.Text = "Có lỗi xảy ra";
        }
    }
}