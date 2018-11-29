using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_ThanhToan : System.Web.UI.Page
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
            lblthanhtien.Text = gioHang.TongTien.ToString();

        }
        if (!IsPostBack)
        {
            BindGrid(gioHang);

        }
    }

    protected void grvhang_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }
    public void BindGrid(GioHang gioHang)
    {
       grvhang.DataSource = gioHang.hang;
        grvhang.DataBind();
        lbltong.Text = gioHang.TongTien.ToString();

    }
    public int TryConvert(string s)
    {
        int i = 0;
        int.TryParse(s, out i);
        return i;
    }

    protected void btndathang_Click(object sender, EventArgs e)
    {

        DataView view = (DataView)sqlTaiKhoan.Select(new DataSourceSelectArguments()); //lấy từ sql ra
        DataTable dt = view.ToTable();//đổ vào table
        List<TaiKhoan> arrTK = new List<TaiKhoan>();
        foreach (DataRow dr in dt.Rows)
        {
            bool theoDoi = false;
            if(dr[7].ToString() == "true")
            {
                theoDoi = true;
            }
            arrTK.Add(new TaiKhoan(dr["hoTen"].ToString(), dr["email"].ToString(), dr["soDienThoai"].ToString(), dr["diaChi"].ToString(),"Việt Nam", dr["thanhPho"].ToString(),
                dr["matKhau"].ToString(), theoDoi));
        }
        //dòng 56 -> 65 đổ table vào list

        Sqldathang.InsertParameters["maHoaDon"].DefaultValue = timMa();
        User user = (User)Session["User"];
        
        //kiểm tra xem email nào trùng thì lấy thông tin từ tài khoản đấy ra
        for (int i=0;i<arrTK.Count;i++ )
        {
            if (arrTK[i].Email == user.username)
            {
                Sqldathang.InsertParameters["maTaiKhoan"].DefaultValue = arrTK[i].Email;
                Sqldathang.InsertParameters["email"].DefaultValue = arrTK[i].Email;
                Sqldathang.InsertParameters["hoTen"].DefaultValue = arrTK[i].Ten;
                Sqldathang.InsertParameters["soDienThoai"].DefaultValue = arrTK[i].SoDienThoai;
                Sqldathang.InsertParameters["diaChi"].DefaultValue = arrTK[i].DiaChi;
                Sqldathang.InsertParameters["thanhPho"].DefaultValue = arrTK[i].Tinh;
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ arrTK[i].Email + "')", true);

                break;
            }
        }

        Sqldathang.InsertParameters["ngaylap"].DefaultValue = DateTime.Now.ToShortDateString();

        Sqldathang.InsertParameters["phuongThucGiaoHang"].DefaultValue = radmienphi.Text;
        Sqldathang.InsertParameters["maGiamGia"].DefaultValue = txtma.Text;
        Sqldathang.InsertParameters["yeuCau"].DefaultValue = txtrequest.Text;
        Sqldathang.InsertParameters["tongTien"].DefaultValue = lbltong.Text;
        Sqldathang.InsertParameters["tinhTrang"].DefaultValue = "dang xu ly";


        if (radbank.Checked)
        {
            Sqldathang.InsertParameters["phuongThucThanhToan"].DefaultValue = radbank.Text;

        }
        else
        { Sqldathang.InsertParameters["phuongThucThanhToan"].DefaultValue = radpay_given.Text; }

        try
        {
            if (grvhang.Rows.Count > 0)//nếu gridview có lớn hơn 0 hàng
            {
                Sqldathang.Insert();
                txtma.Text = "";
                txtrequest.Text = "";
                lblthongbao.Text = "Đặt hàng thành công";
                Session.Remove("giohang");
                Response.Redirect("ThanhToan.aspx");
            }
            else
            {
                lblthongbao.Text = "Không có hàng";
            }
        }
        catch(Exception ex)
        {
            lblthongbao.Text = "Có lỗi xảy ra";
        }
       


    }
    string timMa()
    {
        Random rd = new Random();
        DataView view = (DataView)Sqldathang.Select(new DataSourceSelectArguments());
        DataTable dt = view.ToTable();
        List<string> value = new List<string>();
        foreach (DataRow dr in dt.Rows)
        {
            value.Add("HD" + dr[0].ToString());
        }

        while (true)
        {
            int id = rd.Next(1, 100);
            if (!value.Contains("HD" + id.ToString()))
            {
                return "HD" + id;
            }
        }

    }
}