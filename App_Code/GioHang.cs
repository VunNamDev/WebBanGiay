using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
public class GioHang
{
    public List<HangChon> hang { get; set; }
    private float tongTien;
    public float TongTien
    {
        get
        {
            tongTien = 0;
            if (hang != null)
            {
                foreach (var x in hang)
                {
                    tongTien += x.ThanhTien;
                }

            }
            return tongTien;
        }
    }
    public GioHang()
    {
        //
        // TODO: Add constructor logic here
        //
        if (this.hang == null)
        {
            this.hang = new List<HangChon>();
        }
    }

    public int layGiaTri(string ma)
    {
        int dem = 0;
        foreach (var x in this.hang)
        {
            if (x.MaHang == ma)
            {
                return dem;
            }
            dem++;
        }
        return -1;
    }
    public void themHang(string ma, string ten, float gia, int soLuong, float size)
    {

        int dem = this.layGiaTri(ma);
        if (dem == -1)
        {
            HangChon hangChon = new HangChon(ma, ten, gia, soLuong, size);
            hang.Add(hangChon);
        }
        else
        {
            hang[dem].SoLuong += soLuong;
        }
    }
    public void XoaHang(int rowID)
    {
        hang.RemoveAt(rowID);
    }

    public void capNhat(int rowID, int soLuong)
    {

        if (soLuong == 0)
        {
            XoaHang(rowID);
        }
        else
        {
            HangChon hangChon = hang[rowID];
            hangChon.SoLuong = soLuong;
        }
    }
}