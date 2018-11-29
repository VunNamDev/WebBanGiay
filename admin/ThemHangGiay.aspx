<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ThemHangGiay.aspx.cs" Inherits="admin_ThemHangGiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <form id="form1" runat="server">
     <div style="background-color:burlywood;width:100%;height:50px;line-height:50px;border-radius:5px" >
        <h3 style="margin-left:100px;color:#ffd800" > Thêm Hãng Giày</h3>
    </div>

         <br />
         <table style="width: 100%;border:1px solid #4cff00">
             <tr>
                 <td style="height: 49px">Mã Hãng Giày</td>
                 <td style="height: 49px">
                     <asp:TextBox ID="txtMaHang" runat="server" Height="30px" style="margin-bottom: 0%" Width="180px" Enabled="False"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="height: 49px">Thêm Hãng Giày</td>
                 <td style="height: 49px">
                     <asp:TextBox ID="txtTenHang" runat="server" Height="30px" Width="180px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqTenHang" runat="server" ControlToValidate="txtTenHang" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*Bạn Cần Nhập Tên</asp:RequiredFieldValidator>
                 </td>
             </tr>
         </table>
         <br />
         <br />
         <asp:Button ID="btnThemHang" runat="server" ForeColor="#0066FF" Height="37px" OnClick="btnThemHang_Click" Text="Thêm " Width="116px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <br />
           
                <asp:SqlDataSource ID="sqlDsHangGiay" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString2 %>" DeleteCommand="DELETE FROM [HangGiay] WHERE [maHangGiay] = @maHangGiay" InsertCommand="INSERT INTO [HangGiay] ([maHangGiay], [tenHangGiay]) VALUES (@maHangGiay, @tenHangGiay)" SelectCommand="SELECT * FROM [HangGiay]" UpdateCommand="UPDATE [HangGiay] SET [tenHangGiay] = @tenHangGiay WHERE [maHangGiay] = @maHangGiay">
                    <DeleteParameters>
                        <asp:Parameter Name="maHangGiay" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="maHangGiay" Type="String" />
                        <asp:Parameter Name="tenHangGiay" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="tenHangGiay" Type="String" />
                        <asp:Parameter Name="maHangGiay" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
          
     </form>

</asp:Content>

