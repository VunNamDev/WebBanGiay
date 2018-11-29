<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="ChiTietDoiGiay.aspx.cs" Inherits="user_ChiTietDoiGiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
    .tenHang{
        color:#fff;
        margin-left:10px;
    }
    .auto-style1 {
        width: 100%;
    }
    .div{
            font-family: Helvetica, Arial, sans-serif;
   
    }
    td{
            color: rgb(51, 55, 69)
    }
    a{
        color:#fff;
    }
    .btnMuaHang{
        background-color:rgb(221, 0, 23);
       
        height:40px;
        line-height:40px;
        margin-left:10px;
        padding:10px 30px;
        color:#fff;
    }
    .btnSize{
        background-color: rgb(66, 139, 202);
        border: 0px;
        color: #fff;
        font-size: 14px
    }
    .btnCongTru{
        text-align:center;
       line-height:40px;
       font-size:20;
       color:#fff;
       background-color:rgb(44, 89, 137);

    }
    .btnLienHe{
        background-color: #4CAF50;
        padding:7px;
    }
    .red{
        color:red;
    }
    .green{
        color:rgb(51, 153, 101);
</style>
<div class="div" style="min-height:400px;   background-color: rgba(228, 228, 228,0.1);" >


   <asp:FormView ID="frmChiTiet" runat="server" DataKeyNames="maHang" DataSourceID="sqlChiTiet">
        <EditItemTemplate>
            maHang:
            <asp:Label ID="maHangLabel1" runat="server" Text='<%# Eval("maHang") %>' />
            <br />
            maHangGiay:
           
            <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' />
            <br />
            tenHang:
            <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
            <br />
            mau:
            <asp:TextBox ID="mauTextBox" runat="server" Text='<%# Bind("mau") %>' />
            <br />
            size:
            <asp:TextBox ID="sizeTextBox" runat="server" Text='<%# Bind("size") %>' />
            <br />
            gia:
            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
            <br />
            anh:
            <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            gioiTinh:
            <asp:TextBox ID="gioiTinhTextBox" runat="server" Text='<%# Bind("gioiTinh") %>' />
            <br />
            soLuongCon:
            <asp:TextBox ID="soLuongConTextBox" runat="server" Text='<%# Bind("soLuongCon") %>' />
            <br />
            moTa:
            <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' />
            <br />
            ngayNhap:
            <asp:TextBox ID="ngayNhapTextBox" runat="server" Text='<%# Bind("ngayNhap") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            maHang:
            <asp:TextBox ID="maHangTextBox" runat="server" Text='<%# Bind("maHang") %>' />
            <br />
            maHangGiay:
            <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' />
            <br />
            tenHang:
            <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
            <br />
            mau:
            <asp:TextBox ID="mauTextBox" runat="server" Text='<%# Bind("mau") %>' />
            <br />
            size:
            <asp:TextBox ID="sizeTextBox" runat="server" Text='<%# Bind("size") %>' />
            <br />
            gia:
            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
            <br />
            anh:
            <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            gioiTinh:
            <asp:TextBox ID="gioiTinhTextBox" runat="server" Text='<%# Bind("gioiTinh") %>' />
            <br />
            soLuongCon:
            <asp:TextBox ID="soLuongConTextBox" runat="server" Text='<%# Bind("soLuongCon") %>' />
            <br />
            moTa:
            <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' />
            <br />
            ngayNhap:
            <asp:TextBox ID="ngayNhapTextBox" runat="server" Text='<%# Bind("ngayNhap") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>

            <div style="background-color: rgb(44, 89, 137); height: 40px; vertical-align: middle; line-height: 40px; color: #fff;margin-top:20px;">
                <asp:Label ID="tenHangLabel0" runat="server" BorderStyle="None" Text='<%# Bind("tenHang") %>' CssClass="tenHang" />
                &nbsp; -
                <asp:Label ID="mauLabel" runat="server" Font-Size="18px" Text='<%# Bind("mau") %>' />
            </div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td style="width: 410px">
                        <asp:Image ID="Image1" runat="server" Height="410px" ImageUrl='<%# Eval("anh", "../Image/{0}") %>' Width="410px" />
                    </td>
                    <td style="padding: 0px 10px 0px 10px; display: block;" >
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/css/image/cam-ket-2.png" Width="360px" />
                        <br />
                        <br />
                        Mã sản phẩm:
                        
                        <asp:Label ID="maHangLabel" runat="server" Text='<%# Eval("maHang") %>' />
                        
                        <br />
                        Tình trạng kho :
                        <asp:Label ID="soLuongConLabel" runat="server" Text='<%# int.Parse(Eval("soLuongCon").ToString())>0?"Còn hàng":"Hết hàng" %>' CssClass="green" />
                        <br />
                        <br />
                        <asp:Label ID="giaLabel" runat="server" Font-Size="X-Large" Text='<%# Bind("gia") %>' />
                        
                        &nbsp;₫<br />
                        
                        <br />
                        Chọn size
                        <asp:Label ID="gioiTinhLabel" runat="server" Text='<%# Bind("gioiTinh") %>' />
                        :<br />
                        <asp:Button ID="Button1" runat="server" Text='<%# Bind("size") %>' Height="25px" Width="40px" CssClass="btnSize" OnClick="Button1_Click" />
                        
                        <asp:Label ID="lblLoi" runat="server" CssClass="red"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:LinkButton ID="btnTru" runat="server" Height="40px" Width="37px" CssClass="btnCongTru" OnClick="btnTru_Click">-</asp:LinkButton>
                        <asp:Label ID="lblSL" runat="server" Text='1'></asp:Label>

                        <asp:LinkButton ID="btnCong" runat="server" Height="40px" Width="37px" CssClass="btnCongTru" OnClick="btnCong_Click">+</asp:LinkButton>
                        <asp:LinkButton ID="btnThemHang" runat="server" CssClass="btnMuaHang" OnClick="btnThemHang_Click">Mua hàng ngay</asp:LinkButton>
                        <br />
                        <br />
                        <div style="font-size: 20px; background-color: rgb(44, 89, 137); line-height: 35px; width: 360px; height: 35px; text-align: center; color: #fff;">
                            Hotline: 0973 711 868
                        </div>
                        <br />
                        <div style="font-size: 20px; background-color: rgb(44, 89, 137); line-height: 35px; width: 360px; height: 35px; text-align: center; color: #fff;"> 
                                Nếu hết size của bạn &gt;&gt;&gt;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="btnLienHe">Liên hệ ngay</asp:LinkButton>
                            </div>
                        
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <div style="width: 506px; height: 40px; line-height: 40px; background-color: rgb(44, 89, 137); color: #fff; padding-left: 5px; font-size: 20px;">
                CHI TIẾT</div>
            <br />
            <asp:Label ID="tenHangLabel1" runat="server" Font-Bold="True" Font-Size="14pt" Text='<%# Bind("tenHang") %>' />
            <br />
            <br />
            &nbsp;<asp:Label ID="moTaLabel" runat="server" Text='<%# Bind("moTa") %>' Font-Size="18px" />
            <br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="530px" ImageUrl='<%# Eval("anh", "../Image/{0}") %>' Width="100%" />
            <br />
            <br />

        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource ID="sqlChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [Hang] WHERE ([maHang] = @maHang)">
        <SelectParameters>
            <asp:QueryStringParameter Name="maHang" QueryStringField="maGiay" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

