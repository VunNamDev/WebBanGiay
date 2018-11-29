<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HangGiay.aspx.cs" Inherits="admin_HangGiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="background-color:burlywood;width:100%;height:50px;line-height:50px;border-radius:5px" >
        <h1 style="margin-left:100px;color:#fff" >Hãng Giày</h1>
    </div>
    <form id="form1" runat="server">
        <div style="min-height:380px; height: 262px; width: 613px;" >
        
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
          
            <asp:GridView ID="gvHangGiay" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maHangGiay" DataSourceID="sqlDsHangGiay" Height="327px" PageSize="4" Width="647px" OnRowCommand="gvHangGiay_RowCommand" OnRowDeleted="gvHangGiay_RowDeleted" OnRowUpdated="gvHangGiay_RowUpdated" OnSelectedIndexChanged="gvHangGiay_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="maHangGiay" HeaderText="Mã Hãng Giày" ReadOnly="True" SortExpression="maHangGiay" />
                    <asp:BoundField DataField="tenHangGiay" HeaderText="Tên Hãng Giày" SortExpression="tenHangGiay" />
                    <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Tạo mới" NewText="Thêm mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <asp:Button ID="btnThemHang" runat="server" Text="Thêm" Width="124px" OnClick="btnThemHang_Click1" Height="34px" PostBackUrl="~/admin/ThemHangGiay.aspx" />
            <br />
            <br />
            <div style="color:red">
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
            
            <br />
           
    </div>
    </form> 

</asp:Content>


