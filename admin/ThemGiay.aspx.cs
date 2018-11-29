using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ThemGiay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        
        if (!IsPostBack)
        {
           
            TextBox maHangTextBox = (TextBox)frmHang.FindControl("maHangTextBox");
            maHangTextBox.Text = timMa() +"";

            TextBox maHangGiayTextBox = (TextBox)frmHang.FindControl("maHangGiayTextBox");
            maHangGiayTextBox.Text = "HG01";



        }

        TextBox ngayNhapTextBox = (TextBox)frmHang.FindControl("ngayNhapTextBox");
        ngayNhapTextBox.Text = DateTime.Now.ToShortDateString();
    }

    int timMa()
    {
        Random rd = new Random();
        DataView view = (DataView)sqlGiay.Select(new DataSourceSelectArguments());
        DataTable dt = view.ToTable();
        List<string> value = new List<string>();
        foreach (DataRow dr in dt.Rows)
        {
            value.Add(dr[0].ToString());
        }

        while (true)
        {
            int id = rd.Next();
            if (!value.Contains(id.ToString()))
            {
                return id;
            }
        }
        return 0;
    }
    protected void ddlHangGiay_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)frmHang.FindControl("ddlHangGiay");
        TextBox maHangGiayTextBox = (TextBox)frmHang.FindControl("maHangGiayTextBox");
        maHangGiayTextBox.Text = ddl.SelectedValue.ToString();
    }

    

    protected void InsertCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Giay.aspx");
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        
        TextBox anhTextBox = (TextBox)frmHang.FindControl("anhTextBox");
        FileUpload fileAnh = (FileUpload)frmHang.FindControl("fileAnh");
        anhTextBox.Text = fileAnh.FileName;
        Image imgAnh = (Image)frmHang.FindControl("imgAnh");
        imgAnh.ImageUrl = "../Image/" + fileAnh.FileName;
    }

    protected void frmHang_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        lbThongBao.Text = "";
        if (e.Exception != null)
        {
            lbThongBao.Text = "Có lỗi xảy ra, xin thử lại";
            e.ExceptionHandled = true;
        }
    }

    protected void fileAnh_DataBinding(object sender, EventArgs e)
    {
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        TextBox anhTextBox = (TextBox)frmHang.FindControl("anhTextBox");
        FileUpload fileAnh = (FileUpload)frmHang.FindControl("fileAnh");
        anhTextBox.Text = fileAnh.FileName;
    }

    protected void frmHang_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        lbThongBao.Text = "";
        if (e.Exception != null)
        {
            lbThongBao.Text = "Có lỗi xảy ra khi thêm dữ liệu";
            e.ExceptionHandled = true;
        }
        else
        {
            lbThongBao.Text = "Thêm thành công";
        }

    }
}