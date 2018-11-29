<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="DangKi.aspx.cs" Inherits="user_DangKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100%;" >
      


        <table style="width:77%;">
            <tr>
                <td colspan="2">&nbsp;
          <div id="header-link"
              style="
              width:100%;
              background-color: rgb(244, 244, 244);
 box-shadow: 0 1px 15px 0 rgba(0, 0, 0, 0.25); 
  height: 40px;
   line-height: 40px;
  white-space: nowrap;
  float:left;
              "
              >


              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" Font-Names="Arial" style="font-size: small" PostBackUrl="~/user/Home.aspx">Trang chủ</asp:LinkButton>
               &nbsp;»

              <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" Font-Names="Arial" style="font-size: small" PostBackUrl="~/user/DangNhap.aspx">Tài khoản</asp:LinkButton>&nbsp;»
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" Font-Names="Arial" style="font-size: small" PostBackUrl="~/user/DangKi.aspx">Đăng ký</asp:LinkButton>
                    </div>

                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    
                   <div id="dangky" 
                    style="
 margin:auto;
background-color: rgb(44, 89, 137);
 height: 40px;

  line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
  width:96%;
  ">&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label1" runat="server" ForeColor="White"  Text="ÐĂNG KÝ TÀI KHOẢN" CssClass="auto-style1" style="font-size: small"></asp:Label>
                   </div>
                &nbsp;

                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Nếu bạn đã có tài khoản tài website của Myshoes.vn, bạn vui lòng"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/user/DangNhap.aspx">Ðăng nhập.</asp:LinkButton>
                <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;

  <div id="chitiet" 
                    style="
 margin:auto;
background-color: rgb(44, 89, 137);
 height: 40px;

  line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
  width:96%;
  ">&nbsp;&nbsp;&nbsp;
                       <strong>
                       <asp:Label ID="Label3" runat="server" ForeColor="White"  Text="Chi tiết cá nhân" CssClass="auto-style1" style="font-size: small"></asp:Label>
                   </strong>
                   </div>
                </td>
            </tr>
            <tr >
                <td style="width: 225px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
">
                    <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Text="Họ và tên:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" Width="312px"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ phải trong khoảng từ 1 đến 32 ký tự" BackColor="Red" ControlToValidate="txtHoTen" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr >
                <td style="height: 21px; width: 225px;
width: 225px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;

">
                    <asp:Label ID="Label6" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="E-Mail:"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="312px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BackColor="Red" ControlToValidate="txtEmail" EnableTheming="False" ErrorMessage="Địa chỉ E-Mail không  hợp lệ" Font-Names="Arial" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr >
                <td style="width: 225px;
width: 225px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
">
                    <asp:Label ID="Label8" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Số điện thoại:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSdt" runat="server" Width="312px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Số điện thoại phải trong khoảng từ 3 đến 32 ký tự" BackColor="Red" ControlToValidate="txtSdt" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    
  <div id="diachi" 
                    style="
 margin:auto;
background-color: rgb(44, 89, 137);
 height: 40px;

  line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
  width:96%;
  ">&nbsp;&nbsp;&nbsp;
                       <strong>
                       <asp:Label ID="Label10" runat="server" ForeColor="White"  Text="Địa chỉ" CssClass="auto-style1" style="font-size: small"></asp:Label>
                   </strong>
                   </div>

                </td>
            </tr>
            <tr  >
                <td style="height: 21px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;">
                    <asp:Label ID="Label11" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Font-Names="Arial" Text="Địa chỉ:"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:TextBox ID="txtDiacChi" runat="server" Width="312px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui lòng nhập địa chỉ" BackColor="Red" ControlToValidate="txtDiacChi" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr  >
                <td style="height: 21px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;">
                    <asp:Label ID="Label13" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Font-Names="Arial" Text="Quốc gia:"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:DropDownList ID="ddlQuocGia" runat="server" Height="16px" Width="100px" AppendDataBoundItems="True">
                        <asp:ListItem Value="1">--Hãy chọn--</asp:ListItem>
                        <asp:ListItem Value="0">Việt Nam</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Vui lòng chọn quốc gia" BackColor="Red" ControlToValidate="ddlQuocGia" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 21px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial; ">
                    <asp:Label ID="Label15" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label16" runat="server" Font-Names="Arial" Text="Tỉnh/Thành Phố:"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:DropDownList ID="ddlTinh" runat="server" Height="16px" Width="179px">
                        <asp:ListItem Value="0">--Hãy chọn--</asp:ListItem>
                        <asp:ListItem>Quảng Ninh</asp:ListItem>
                        <asp:ListItem>Hải Phòng</asp:ListItem>
                        <asp:ListItem>Hà Nội</asp:ListItem>
                        <asp:ListItem>Hồ Chí Minh</asp:ListItem>
                        <asp:ListItem>Hà Nam</asp:ListItem>
                        <asp:ListItem>Cao Bằng</asp:ListItem>
                        <asp:ListItem>Lạng Sơn</asp:ListItem>
                        <asp:ListItem>Hà Giang</asp:ListItem>
                        <asp:ListItem>Ninh Bình</asp:ListItem>
                        <asp:ListItem>Thanh Hóa</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui lòng chọn Tỉnh/Thành phố" BackColor="Red" ControlToValidate="ddlTinh" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                       
                   <div id="matkhau" 
                    style="
 margin:auto;
background-color: rgb(44, 89, 137);
 height: 40px;

  line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
  width:96%;
  ">&nbsp;&nbsp;&nbsp;
                       <strong>
                       <asp:Label ID="Label17" runat="server" ForeColor="White"  Text="Mật khẩu" CssClass="auto-style1" style="font-size: small" Font-Names="Arial"></asp:Label>
                       </strong>
                   </div>
                &nbsp;

                </td>
            </tr>
            <tr >
                <td style="height: 21px;
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;">
                    <asp:Label ID="Label18" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label19" runat="server" Font-Names="Arial" Text="Mật khẩu:"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:TextBox ID="txtMK" runat="server" Width="312px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mật khẩu trong khoảng từ 4 đến 20 ký tự" BackColor="Red" ControlToValidate="txtMK" Font-Names="Arial" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr >
                <td style="
line-height: 40px;
  white-space: nowrap;
  font-family:Arial;">
                    <asp:Label ID="Label20" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label21" runat="server" Font-Names="Arial" Text="Nhập lại mật khẩu:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMK2" runat="server" Width="312px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="Red" ControlToValidate="txtMK" EnableTheming="False" ErrorMessage="Mật khẩu không khớp" Font-Names="Arial" ForeColor="White" ValidationExpression="\w{3,20}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;

                    <div id="matkhau" 
                    style="
 margin:auto;
background-color: rgb(44, 89, 137);
 height: 40px;

  line-height: 40px;
  white-space: nowrap;
  font-family:Arial;
  width:96%;
  ">&nbsp;&nbsp;&nbsp;
                       <strong>
                       <asp:Label ID="Label22" runat="server" ForeColor="White"  Text="Tin mới" CssClass="auto-style1" style="font-size: small" Font-Names="Arial"></asp:Label>
                       </strong>
                   </div>
                </td>
            </tr>
            <tr style="line-height: 40px;
  white-space: nowrap;
  font-family:Arial;">
                <td>&nbsp;<asp:Label ID="Label23" runat="server" Font-Names="Arial" Text="Theo dõi:"></asp:Label>
                    &nbsp;</td>
                <td>&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="chon" Font-Names="Arial" Text="Đồng ý" Checked="True" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="chon" Font-Names="Arial" Text="Không" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;

                     <div id="header-button"
              style="
              width:100%;
              background-color: rgb(244, 244, 244);
 box-shadow: 0 1px 15px 0 rgba(0, 0, 0, 0.25); 
  height: 80px;
   line-height: 40px;
  white-space: nowrap;
  float:left;
              "
              >

 <div style="float:right;
                        margin-right:15px;
                        line-height:80px;
">

                     <asp:Button ID="Button1" runat="server" Text="TIẾP TỤC" BackColor="#DD0017" CssClass="auto-style31" Height="33px" Width="77px" ForeColor="White" OnClick="Button1_Click" />
                </div>
  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="lblThongBao" runat="server"></asp:Label>
  
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString2 %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [maTaiKhoan] = @maTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([maTaiKhoan], [matKhau], [hoTen], [diaChi], [soDienThoai], [email], [loaiTaiKhoan], [thanhPho], [theoDoi]) VALUES (@maTaiKhoan, @matKhau, @hoTen, @diaChi, @soDienThoai, @email, @loaiTaiKhoan, @thanhPho, @theoDoi)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [matKhau] = @matKhau, [hoTen] = @hoTen, [diaChi] = @diaChi, [soDienThoai] = @soDienThoai, [email] = @email, [loaiTaiKhoan] = @loaiTaiKhoan, [thanhPho] = @thanhPho, [theoDoi] = @theoDoi WHERE [maTaiKhoan] = @maTaiKhoan">
                        <DeleteParameters>
                            <asp:Parameter Name="maTaiKhoan" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="maTaiKhoan" Type="String" />
                            <asp:Parameter Name="matKhau" Type="String" />
                            <asp:Parameter Name="hoTen" Type="String" />
                            <asp:Parameter Name="diaChi" Type="String" />
                            <asp:Parameter Name="soDienThoai" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="loaiTaiKhoan" Type="String" />
                            <asp:Parameter Name="thanhPho" Type="String" />
                            <asp:Parameter Name="theoDoi" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="matKhau" Type="String" />
                            <asp:Parameter Name="hoTen" Type="String" />
                            <asp:Parameter Name="diaChi" Type="String" />
                            <asp:Parameter Name="soDienThoai" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="loaiTaiKhoan" Type="String" />
                            <asp:Parameter Name="thanhPho" Type="String" />
                            <asp:Parameter Name="theoDoi" Type="Boolean" />
                            <asp:Parameter Name="maTaiKhoan" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
      


    </div>

</asp:Content>

