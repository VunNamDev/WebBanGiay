<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DonHang.aspx.cs" Inherits="admin_DonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div>
            <h1 style="vertical-align: middle; text-align: center">
                Hóa đơn
            </h1>
        </div>
        <asp:SqlDataSource ID="sqlDonHang" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" 
            SelectCommand="SELECT * FROM [HoaDon]" DeleteCommand="DELETE FROM [HoaDon] WHERE [maHoaDon] = @maHoaDon" InsertCommand="INSERT INTO [HoaDon] ([maHoaDon], [maTaiKhoan], [ngaylap], [email], [hoTen], [soDienThoai], [diaChi], [thanhPho], [phuongThucGiaoHang], [phuongThucThanhToan], [maGiamGia], [yeuCau], [tongTien], [tinhTrang]) VALUES (@maHoaDon, @maTaiKhoan, @ngaylap, @email, @hoTen, @soDienThoai, @diaChi, @thanhPho, @phuongThucGiaoHang, @phuongThucThanhToan, @maGiamGia, @yeuCau, @tongTien, @tinhTrang)" UpdateCommand="UPDATE [HoaDon] SET [maTaiKhoan] = @maTaiKhoan, [ngaylap] = @ngaylap, [email] = @email, [hoTen] = @hoTen, [soDienThoai] = @soDienThoai, [diaChi] = @diaChi, [thanhPho] = @thanhPho, [phuongThucGiaoHang] = @phuongThucGiaoHang, [phuongThucThanhToan] = @phuongThucThanhToan, [maGiamGia] = @maGiamGia, [yeuCau] = @yeuCau, [tongTien] = @tongTien, [tinhTrang] = @tinhTrang WHERE [maHoaDon] = @maHoaDon">
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
        <asp:GridView ID="gvDonHang" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="maHoaDon" DataSourceID="sqlDonHang" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"   Width="100%" OnRowDeleted="gvDonHang_RowDeleted" OnRowCommand="gvDonHang_RowCommand" >
            <Columns>
                <asp:TemplateField HeaderText="Mã hóa đơn" SortExpression="maHoaDon">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("maHoaDon") %>' Width="55px"></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("maHoaDon") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã tài khoản" SortExpression="maTaiKhoan">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("maTaiKhoan") %>' Enabled="False" Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("maTaiKhoan") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày lập" SortExpression="ngaylap">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ngaylap") %>' Enabled="False" Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ngaylap", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Text='<%# Bind("email") %>' Width="186px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Họ tên" SortExpression="hoTen">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Text='<%# Bind("hoTen") %>' Width="44px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("hoTen") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số điện thoại" SortExpression="soDienThoai">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("soDienThoai") %>' Enabled="False" Width="99px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("soDienThoai") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ" SortExpression="diaChi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Text='<%# Bind("diaChi") %>' Width="32px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("diaChi") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thành phố" SortExpression="thanhPho">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Enabled="False" Text='<%# Bind("thanhPho") %>' Width="49px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("thanhPho") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phương thức giao hàng" SortExpression="phuongThucGiaoHang">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Text='<%# Bind("phuongThucGiaoHang") %>' Width="65px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("phuongThucGiaoHang") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phương thức thanh toán" SortExpression="phuongThucThanhToan">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("phuongThucThanhToan") %>' Enabled="False" Width="67px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("phuongThucThanhToan") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã giảm giá" SortExpression="maGiamGia">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Enabled="False" Text='<%# Bind("maGiamGia") %>' Width="65px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("maGiamGia") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Yều cầu" SortExpression="yeuCau">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Enabled="False" Text='<%# Bind("yeuCau") %>' Width="56px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("yeuCau") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tổng tiền" SortExpression="tongTien">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server" Enabled="False" Text='<%# Bind("tongTien") %>' Width="64px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("tongTien") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tình trạng" SortExpression="tinhTrang">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("tinhTrang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("tinhTrang") %>'></asp:Label>
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
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("maHoaDon", "ChiTietDonHang.aspx?maHoaDon={0}") %>' Text="Chi tiết"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No data to returns
            </EmptyDataTemplate>
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
        <asp:Label ID="lblThongBao" Text="" runat="server"></asp:Label>
    </form>
</asp:Content>

