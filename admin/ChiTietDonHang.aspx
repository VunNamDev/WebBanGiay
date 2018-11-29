<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ChiTietDonHang.aspx.cs" Inherits="admin_ChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div style="align-content:center">
            <h1 style="text-align: center; vertical-align: middle">
                Chi tiết hóa đơn
            </h1>
        </div>
        <asp:SqlDataSource ID="sqlChiTietDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [ChiTietHoaDon] WHERE ([maHoaDon] = @maHoaDon)" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [maHoaDon] = @maHoaDon AND [maHang] = @maHang" InsertCommand="INSERT INTO [ChiTietHoaDon] ([maHoaDon], [maHang], [soLuong]) VALUES (@maHoaDon, @maHang, @soLuong)" UpdateCommand="UPDATE [ChiTietHoaDon] SET [soLuong] = @soLuong WHERE [maHoaDon] = @maHoaDon AND [maHang] = @maHang">
            <DeleteParameters>
                <asp:Parameter Name="maHoaDon" Type="String" />
                <asp:Parameter Name="maHang" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="maHoaDon" Type="String" />
                <asp:Parameter Name="maHang" Type="String" />
                <asp:Parameter Name="soLuong" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="maHoaDon" QueryStringField="maHoaDon" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="soLuong" Type="Int32" />
                <asp:Parameter Name="maHoaDon" Type="String" />
                <asp:Parameter Name="maHang" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlChiTietDonHang" PageSize="5" Width="100%" DataKeyNames="maHoaDon,maHang">
            <Columns>
                <asp:TemplateField HeaderText="Mã hóa đơn" SortExpression="maHoaDon">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("maHoaDon") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("maHoaDon") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã hàng" SortExpression="maHang">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("maHang") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("maHang") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số lượng" SortExpression="soLuong">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("soLuong") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("soLuong") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                    </ItemTemplate>
                    <ItemStyle BackColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
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
    </form>
</asp:Content>

