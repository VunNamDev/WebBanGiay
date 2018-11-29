using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TaiKhoan
/// </summary>
public class TaiKhoan
{
    public string Ten { get; set; }
    public string Email { get; set; }
    public string SoDienThoai { get; set; }
    public string DiaChi { get; set; }
    public string QuocGia { get; set; }
    public string Tinh { get; set; }
    public string MatKhau { get; set; }
    public Boolean TheoDoi { get; set; }
    public TaiKhoan()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public TaiKhoan(string ten, string email, string soDienThoai, string diaChi, string quocGia, string tinh, string matKhau, bool theoDoi)
    {
        Ten = ten;
        Email = email;
        SoDienThoai = soDienThoai;
        DiaChi = diaChi;
        QuocGia = quocGia;
        Tinh = tinh;
        MatKhau = matKhau;
        TheoDoi = theoDoi;
    }
}