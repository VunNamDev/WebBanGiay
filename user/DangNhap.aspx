<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="user_DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <style>
       
    </style>
    <div style="min-height:450px;"  >
      <div id="header-link" style="width: 100%; background-color: rgb(244, 244, 244);box-shadow: 0 1px 15px 0 rgba(0, 0, 0, 0.25); 
   height: 40px;width:1024px;line-height: 40px; white-space: nowrap;"  >
          <div class="link" style=" margin-left:-800px;color: rgb(0, 0, 0); font-family: Helvetica, Arial, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(244, 244, 244); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp; &nbsp;</span>
                        <asp:LinkButton ID="home" runat="server" ForeColor="Black" PostBackUrl="~/user/Home.aspx">Trang chủ</asp:LinkButton>
                    » <asp:LinkButton ID="acount" runat="server" ForeColor="Black" PostBackUrl="#">Tài khoản</asp:LinkButton>
                        » <asp:LinkButton ID="lg" runat="server" ForeColor="Black" PostBackUrl="~/user/DangNhap.aspx">Đăng nhập</asp:LinkButton>
                    </div>
      </div> 
        <div id="text-login" style="margin-top:20px;font-size: 13px;  font-weight:200;color:white;text-align:center;line-height:40px;background-color:rgb(44,89,137);width:96%;margin-left:20px;">
            <p style="margin-left:50px;">TÀI KHOẢN ĐĂNG NHẬP</p>
        </div>
    <div id="double-login" style="margin-top:20px;width:96%;margin-left:20px;margin-bottom:90px; ">
        <div id="new-customer" style="width:30%;position:relative;padding:15px;float:left; background-color:rgb(244, 244, 244); ">
            <div id="second-content" style="background-color:rgb(44,89,137);padding:8px 10px 8px 10px;margin-bottom:15px;">
            <h2 style=" color:white; font-weight:bold;font-family:Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;">Khách hàng mới</h2>
                </div>
            <div id="content">
                <div id="text-wrap" style="height:190px">
                    <p style="margin-bottom:20px; font-size:18px;">
                        <b>Đăng kí tài khoản</b>
                    </p>
                    <p style="font-size:13px; line-height:1.3;font-family:Arial, Helvetica, sans-serif;">Bằng cách tạo một tài khoản, bạn sẽ có thể mua hàng nhanh chóng hơn, được cập nhật các sản phẩm mới liên tục và nhiều ưu đãi khác tại Myshoes.vn.</p>
                </div>
                <hr style="width:100%;display:block;height:1px;margin-bottom: 14px;margin-top: 4px;" />
                <div style="width:65px;height:35px; border-radius: 2px;background-color:rgb(221, 0, 23);text-align:center;line-height:35px;" class="next_button">
                    <asp:LinkButton ID="next" runat="server" PostBackUrl="~/user/DangKi.aspx" Font-Bold="True" ForeColor="White" Font-Size="11px" Font-Overline="False" Font-Strikeout="False">TIẾP TỤC</asp:LinkButton>
                </div>
                
            </div>
        </div>
            
        <div id="customer" style="width:40%;position:relative;padding:15px;float:right; background-color:rgb(244, 244, 244);margin-left:20px" >
            <div id="cus-content" style="background-color:rgb(44,89,137);padding:8px 10px 8px 10px;margin-bottom:15px;">
            <h2 style=" color:white; font-weight:bold;font-family:Arial, Helvetica, sans-serif;font-size:14px;font-style:normal;">Khách hàng thân thiết</h2>
        </div>
            <div id="login-content">
                <div id="wrap">
                    <p style="font-family:Arial, Helvetica, sans-serif; font-size:14px;">Tôi là một khách hàng thân thiết</p>
                    <p style="font-family:Arial, Helvetica, sans-serif; font-size:14px;">
                        <asp:SqlDataSource ID="Sqllogin" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [TaiKhoan] WHERE (([email] = @email) AND ([matKhau] = @matKhau) AND ([loaiTaiKhoan] = @loaiTaiKhoan))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtusername" Name="email" PropertyName="Text" Type="String" />

                                <asp:ControlParameter ControlID="txtpassword" Name="matKhau" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="user" Name="loaiTaiKhoan" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </p>
                    <br />
                    <b style="font-family:Arial, Helvetica, sans-serif;font-size:13px;font-style:normal;color:rgb(51, 55, 69)">E-mail:</b><br />
                    <asp:TextBox ID="txtusername" runat="server" BorderColor="#EEEEEE" BorderWidth="1px" Height="28px" Width="380px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqMail" runat="server" ErrorMessage="Cần nhập Email" ControlToValidate="txtusername" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    
                    <br />
                    <b style="font-family:Arial, Helvetica, sans-serif;font-size:13px;font-style:normal;color:rgb(51, 55, 69)">Mật khẩu:</b><br />
                    <asp:TextBox ID="txtpassword" runat="server" BorderColor="#EEEEEE" BorderWidth="1px" Height="28px" Width="380px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPass" runat="server" ErrorMessage="Cần nhập mật khẩu" ControlToValidate="txtpassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br/>
                    
                    <br/>
                    
                    <asp:LinkButton ID="forget_password" runat="server" ForeColor="#336699" Font-Overline="False">Quên mật khẩu</asp:LinkButton>
                </div>
                <hr style="width:100%;display:block;height:1px;margin-bottom: 14px;margin-top: 8px;" />
                <asp:Label ID="lblError" style="color:red;" runat="server" Text=""></asp:Label>
                <div style="width:75px;height:35px; border-radius: 2px;background-color:rgb(221, 0, 23);text-align:center;line-height:35px;" class="login_button">
                    <asp:LinkButton ID="login" runat="server" Font-Bold="True" ForeColor="White" Font-Size="11px" Font-Overline="False" Font-Strikeout="False" OnClick="login_Click">ĐĂNG NHẬP</asp:LinkButton>
                </div>
            </div>
    </div>
    </div>
        </div>
</asp:Content>

