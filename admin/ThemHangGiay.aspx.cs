using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ThemHangGiay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtMaHang.Text = timMa() + "";
        }
    }
    string timMa()
    {
        Random rd = new Random();
        DataView view = (DataView)sqlDsHangGiay.Select(new DataSourceSelectArguments());
        DataTable dt = view.ToTable();
        List<string> value = new List<string>();
        foreach (DataRow dr in dt.Rows)
        {
            value.Add("HG" + dr[0].ToString());
        }

        while (true)
        {
            int id = rd.Next(1, 100);
            if (!value.Contains("HG" + id.ToString()))
            {
                return "HG" + id;
            }
        }

    }
    protected void btnThemHang_Click(object sender, EventArgs e)
    {
        sqlDsHangGiay.InsertParameters["maHangGiay"].DefaultValue = txtMaHang.Text;
        sqlDsHangGiay.InsertParameters["tenHangGiay"].DefaultValue = txtTenHang.Text;
        try
        {
            sqlDsHangGiay.Insert();

            lblError.Text = "";
            Response.Redirect("HangGiay.aspx");

        }
        catch (Exception ex)
        {
            lblError.Text = "Một số lỗi xảy ra khi thêm dữ liệu.<br /><br />";
        }
    }
}