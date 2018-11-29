<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="admin_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        body
        {
            background-color:#CCFFCC;
        }
        .form-login{
         
}
        .login{
         width:460px;
        height:500px;
        margin-left:500px;
        margin-top:60px;
        border: 4px solid #CCC;
        background-color:#F5F5DC;
        border-radius: 10px;
        
        }
        .content{
        background-color:#33CCFF;
        width:240px;
        margin-left:110px;
        height:55px;
        line-height:50px;
        text-align:center;
        font-size:18px;
        color:white;
        }
        .image{
            padding-top:10px;
            opacity:0.5;
            margin-left:175px;

        }
        .image img
        {
            height:105px;
        }
        .up{
            padding-top:20px;
            margin-left:60px;
            font-size:18px;
        }
        .link{
            margin-left:228px;
            font-size:13px;
            padding-top:15px;
        }
        .link a{
            text-decoration:none;
        }
        .link a:hover{
            color:red;
        }
        .btnlogin{
            width:300px;
            color:white;
            background-color:#33CCFF;
            margin-top:40px;
            height:45px;
            margin-left:80px;
            border-radius:10px;
            border:1px solid #33CCFF !important;
            line-height:45px;
            text-align:center;
        }
        
    </style>
    <div class="form-login">
        <div class="login">
            <form runat="server">
                <div class="content">SIGN IN</div>
                <div class="image"><img src="../Image/customer.png"/></div>
                <asp:SqlDataSource ID="SqlAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [TaiKhoan] WHERE (([matKhau] = @matKhau) AND ([email] = @email) AND ([loaiTaiKhoan] = @loaiTaiKhoan))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtpass" Name="matKhau" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="admin" Name="loaiTaiKhoan" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="up">
                <label>Username : </label><asp:TextBox runat="server" Height="36px" Width="200px" ID="txtEmail" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqUser" runat="server" ErrorMessage="Nhập Email" ControlToValidate="txtEmail" ForeColor="Red">*</asp:RequiredFieldValidator>
                <p></p>

                <label>Password :  </label><asp:TextBox runat="server" Height="36px" Width="200px" TextMode="Password" ID="txtpass"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtpass" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
            <div class="link"><a href="#">Forgot your password ?</a></div>
            <div class="btnlogin">
                <asp:LinkButton ID="btn_login" runat="server" BackColor="#33CCFF" Font-Bold="False" Font-Overline="False" ForeColor="White" OnClick="btn_login_Click">LOGIN</asp:LinkButton></div>
                <asp:Label ID="lblError" style="color:red" runat="server" Text=""></asp:Label>
                 </form>
        </div>
    </div>
    
</body>
</html>
