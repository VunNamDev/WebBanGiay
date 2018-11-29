using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_DangKi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TaiKhoan taiKhoan = new TaiKhoan();
        taiKhoan.Ten = txtHoTen.Text;
        taiKhoan.Email = txtEmail.Text;
        taiKhoan.SoDienThoai = txtSdt.Text;
        taiKhoan.DiaChi = txtSdt.Text;
        taiKhoan.QuocGia = ddlQuocGia.SelectedValue.ToString();
        taiKhoan.Tinh = ddlTinh.SelectedValue.ToString();
        taiKhoan.MatKhau = txtMK.Text;
        if (RadioButton1.Checked)
        {
            taiKhoan.TheoDoi = true;

        }
        if (RadioButton2.Checked)
        {
            taiKhoan.TheoDoi = false;

        }
        Session.Add("TaiKhoan", taiKhoan);
        Random rnd = new Random();
        int month = rnd.Next(1, 13);
        int two = rnd.Next(13, 24);
        SqlDataSource1.InsertParameters["maTaiKhoan"].DefaultValue = month.ToString() + two;
        SqlDataSource1.InsertParameters["matKhau"].DefaultValue = taiKhoan.MatKhau;
        SqlDataSource1.InsertParameters["hoTen"].DefaultValue = taiKhoan.Ten;
        SqlDataSource1.InsertParameters["diaChi"].DefaultValue = taiKhoan.DiaChi;
        SqlDataSource1.InsertParameters["soDienThoai"].DefaultValue = taiKhoan.SoDienThoai;
        SqlDataSource1.InsertParameters["email"].DefaultValue = taiKhoan.Email;
        SqlDataSource1.InsertParameters["loaiTaiKhoan"].DefaultValue = "user";
        SqlDataSource1.InsertParameters["thanhPho"].DefaultValue = taiKhoan.Tinh;
        SqlDataSource1.InsertParameters["theoDoi"].DefaultValue = taiKhoan.TheoDoi.ToString();
        try
        {
            SqlDataSource1.Insert();

        }
        catch (Exception)
        {
            lblThongBao.Text = "Thêm Thất bại";
        }
        Response.Redirect("DangNhap.aspx");

    }
}