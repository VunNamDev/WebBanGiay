<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="ThanhToan.aspx.cs" Inherits="user_ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .main {
            width: 77%;
            margin-top: 10px;
            margin-bottom: 50px;
           float:right;
            
            
        }

        .title1 {
            text-align: center;
            margin-bottom: 20px;
            padding-top: 10px;
            background-color: grey;
            color: white;
            height: 40px;
            padding-left: 10px;
            font-size: 14px;
            line-height: 40px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .function {
           width:30%;
           float:left;
           height:400px;
           background-color:gainsboro;
        }

        .free {
            padding-left: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 14px;
        }

        .title2 {
            text-align: center;
            margin-bottom: 20px;
            margin-top: 30px;
            background-color: grey;
            color: white;
            height: 40px;
            padding-left: 10px;
            font-size: 14px;
            line-height: 40px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .pay {
            padding-top: 20px;
            color: black;
            margin-left: -30px !important;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 14px;
        }

        .pay2 {
            color: black;
            margin-left: -65px !important;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 14px;
        }

        .deliver {
            width:69%;
            margin-left:245px;
            height:680px;
            background-color:gainsboro;
        }

        .content_bill {
            height: 40px;
            background-color: grey;
            color: white;
            padding-left: 10px;
            line-height: 40px;
            text-align: center;
        }

        .bill {
            margin-top: 20px;
            width: 100%;
            color: gray;
            text-align: center;
            padding-bottom: 20px;
        }

            .bill li {
                padding-left: 10px;
                width: 18%;
                float: left;
                list-style-type: none;
            }

        .details_bill {
            height: 150px;
            margin-top: 10px;
            margin-bottom: 80px;
        }

        .thanhtien {
            text-align: center;
            margin-top: 6px;
            margin-bottom: 6px;
        }

        .auto-style1 {
            margin-left: 28px;
            margin-top: 7px;
        }

        .phi {
            margin-top: 6px;
            text-align: center;
            margin-bottom: 6px;
        }

        .tong {
            text-align: center;
            margin-top: 6px;
            margin-bottom: 6px;
        }

        .ggia {
            text-align: center;
            margin-top: 6px;
            margin-bottom: 6px;
        }

        .btaccess {
            margin-top: 20px;
            margin-left: 220px;
        }

        .request {
            margin-top: 30px;
            margin-left: 150px;
        }
        .size{
            margin-left:30px;
            
        }
    </style>
    <div style="min-height:700px">
        <div class="main">
            <div class="function">
                <div class="title1">
                    <p>PT.GIAO HÀNG</p>
                </div>
                <div class="free">
                    <asp:RadioButton ID="radmienphi" runat="server" Text=" Miễn phí vận chuyển" Checked="True" />
                </div>
                <div class="title2">
                    <p>PT.THANH TOÁN</p>
                    <div class="pay">
                        <asp:RadioButton ID="radbank" runat="server" Text=" Chuyển khoản ngân hàng" Checked="True" GroupName="pay" />
                    </div>
                    <div class="pay2">
                        <asp:RadioButton ID="radpay_given" runat="server" Text=" Thanh toán khi nhận" AutoPostBack="True" GroupName="pay" />
                    </div>
                </div>
            </div>
            <div class="deliver">
                <div class="content_bill">
                    <p>XÁC NHẬN HOÁ ĐƠN</p>
                </div>
                <div class="bill">
                    <ul>
                        <li>Tên sản phẩm</li>
                        <li>Mã hàng</li>
                        <li>Số lượng</li>
                        <li>Đơn giá </li>
                        <li>Thành tiền</li>
                    </ul>
                </div>
                <br />
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="details_bill">
                    <asp:GridView ID="grvhang" runat="server" AutoGenerateColumns="False" BorderStyle="None" CssClass="auto-style1" Width="487px"  OnRowDataBound="grvhang_RowDataBound">
                        <Columns>
                            <asp:TemplateField ItemStyle-Width="110px" ItemStyle-Height="1px">
                                <ItemTemplate >
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenHang") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="100px" ItemStyle-Height="1px">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("maHang") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="80px" ItemStyle-Height="1px">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("soLuong") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="90px" ItemStyle-Height="1px">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="60px" ItemStyle-Height="1px">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# float.Parse(Eval("Gia").ToString())*int.Parse(Eval("soLuong").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                </div>
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="thanhtien">
                    <b>Thành tiền: &emsp;&emsp;&emsp;&emsp;&emsp; </b>
                    <asp:Label ID="lblthanhtien" runat="server" Font-Bold="True"></asp:Label>
                    đ
                </div>
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="phi"><b>Miễn phí vận chuyển:</b>&emsp;&emsp;&emsp;&emsp;&emsp;<b>0 </b>đ</div>
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="ggia"><b>Mã giảm giá: </b>&ensp;<asp:TextBox ID="txtma" runat="server" Width="70px"></asp:TextBox>&ensp;<asp:Button ID="btnsubmit" runat="server" Text="Áp dụng" ForeColor="White" BackColor="#FF9933" Height="24px" Width="70px" /></div>
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="tong">
                    <b>Tổng tiền: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; </b>
                    <asp:Label ID="lbltong" runat="server" Font-Bold="True"></asp:Label>
                    đ
                </div>
                <hr style="color: dimgrey; width: 93%; margin: auto;" />
                <div class="request">
                    <p><b>Thêm yêu cầu cho đơn của bạn :</b></p>
                    <br />
                    <asp:TextBox ID="txtrequest" runat="server" Width="80%" Height="40px" MaxLength="1000"></asp:TextBox>
                </div>
                <asp:SqlDataSource ID="Sqldathang" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [maHoaDon] = @maHoaDon" InsertCommand="INSERT INTO [HoaDon] ([maHoaDon], [maTaiKhoan], [ngaylap], [email], [hoTen], [soDienThoai], [diaChi], [thanhPho], [phuongThucGiaoHang], [phuongThucThanhToan], [maGiamGia], [yeuCau], [tongTien], [tinhTrang]) VALUES (@maHoaDon, @maTaiKhoan, @ngaylap, @email, @hoTen, @soDienThoai, @diaChi, @thanhPho, @phuongThucGiaoHang, @phuongThucThanhToan, @maGiamGia, @yeuCau, @tongTien, @tinhTrang)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [maTaiKhoan] = @maTaiKhoan, [ngaylap] = @ngaylap, [email] = @email, [hoTen] = @hoTen, [soDienThoai] = @soDienThoai, [diaChi] = @diaChi, [thanhPho] = @thanhPho, [phuongThucGiaoHang] = @phuongThucGiaoHang, [phuongThucThanhToan] = @phuongThucThanhToan, [maGiamGia] = @maGiamGia, [yeuCau] = @yeuCau, [tongTien] = @tongTien, [tinhTrang] = @tinhTrang WHERE [maHoaDon] = @maHoaDon">
                    <DeleteParameters>
                        <asp:Parameter Name="maHoaDon" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="maHoaDon" Type="String" />
                        <asp:Parameter Name="maTaiKhoan" Type="String" />
                        <asp:Parameter Name="ngaylap" Type="DateTime" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="hoTen" Type="String" />
                        <asp:Parameter Name="soDienThoai" Type="String" />
                        <asp:Parameter Name="diaChi" Type="String" />
                        <asp:Parameter Name="thanhPho" Type="String" />
                        <asp:Parameter Name="phuongThucGiaoHang" Type="String" />
                        <asp:Parameter Name="phuongThucThanhToan" Type="String" />
                        <asp:Parameter Name="maGiamGia" Type="String" />
                        <asp:Parameter Name="yeuCau" Type="String" />
                        <asp:Parameter Name="tongTien" Type="Double" />
                        <asp:Parameter Name="tinhTrang" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="maTaiKhoan" Type="String" />
                        <asp:Parameter Name="ngaylap" Type="DateTime" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="hoTen" Type="String" />
                        <asp:Parameter Name="soDienThoai" Type="String" />
                        <asp:Parameter Name="diaChi" Type="String" />
                        <asp:Parameter Name="thanhPho" Type="String" />
                        <asp:Parameter Name="phuongThucGiaoHang" Type="String" />
                        <asp:Parameter Name="phuongThucThanhToan" Type="String" />
                        <asp:Parameter Name="maGiamGia" Type="String" />
                        <asp:Parameter Name="yeuCau" Type="String" />
                        <asp:Parameter Name="tongTien" Type="Double" />
                        <asp:Parameter Name="tinhTrang" Type="String" />
                        <asp:Parameter Name="maHoaDon" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <div class="btaccess">
                    <asp:Button ID="btndathang" runat="server" Text="Đặt hàng" Width="120px" Height="40px" BackColor="#FF6600" ForeColor="White" OnClick="btndathang_Click" /></div>
                    <br />
                <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
            </div>


        </div>
        
        <asp:SqlDataSource ID="sqlTaiKhoan" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [TaiKhoan]"></asp:SqlDataSource>
        
    </div>
</asp:Content>



