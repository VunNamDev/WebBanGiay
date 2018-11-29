using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HangChon
/// </summary>
public class HangChon
{
    public string MaHang { set; get; }
    public string TenHang { set; get; }
    public float Gia { set; get; }
    public int SoLuong { set; get; }
    public float Size { set; get; }
    public HangChon()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string getName()
    {
        return MaHang + " - " + TenHang + " - " + Gia + " - " + SoLuong;
    }
    public HangChon(string maHang, string tenHang, float gia, int soLuong, float size)
    {
        MaHang = maHang;
        TenHang = tenHang;
        Gia = gia;
        SoLuong = soLuong;
        Size = size;
    }

    public float ThanhTien
    {
        get
        {


            return Gia * SoLuong;
        }
    }

}