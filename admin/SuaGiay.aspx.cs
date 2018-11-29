using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
public partial class admin_SuaGiay : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        DropDownList ddl = (DropDownList)frmGiay.FindControl("ddlHangGiay");

        TextBox anhTextBox = (TextBox)frmGiay.FindControl("anhTextBox");
     
        Image imgAnh = (Image)frmGiay.FindControl("imgAnh");
        imgAnh.ImageUrl = "../Image/" + anhTextBox.Text;
    }

    protected void ddlHangGiay_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)frmGiay.FindControl("ddlHangGiay");
      
        TextBox maHangGiayTextBox = (TextBox) frmGiay.FindControl("maHangGiayTextBox");
        maHangGiayTextBox.Text = ddl.SelectedValue.ToString();

    }

    protected void fileAnh_DataBinding(object sender, EventArgs e)
    {
       
    }

    protected void btnPostBack_Click(object sender, EventArgs e)
    {
       // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        TextBox anhTextBox = (TextBox)frmGiay.FindControl("anhTextBox");
        FileUpload fileAnh = (FileUpload)frmGiay.FindControl("fileAnh");
        anhTextBox.Text = fileAnh.FileName;
        Image imgAnh = (Image)frmGiay.FindControl("imgAnh");
        imgAnh.ImageUrl = "../Image/" + fileAnh.FileName;
    }

    protected void UpdateCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Giay.aspx");
    }




    protected void frmGiay_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        
    }

    protected void frmGiay_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        lbThongBao.Text = "";
        if (e.Exception != null)
        {
            lbThongBao.Text = "Có lỗi xảy ra khi sửa dữ liệu";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lbThongBao.Text = "Có người dùng khác đang cập nhât dữ liệu";
        }
        else
        {
            lbThongBao.Text = "Cập nhật thành công";
        }
    }
}