


 <%--style="background-color:#20c997;border:0px;width:60px;height:30px;border-radius:3px;color:#fff;margin-bottom:10px"--%> 
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Giay.aspx.cs" Inherits="admin_Giay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .scroll{
             height: 100px;
            width: 200px;
            overflow: auto;
            display:block;
         
           
        }
    </style>
   <form runat="server" style="width:100%; height:100%;" >
    <div style="background-color:#20a8d8;width:100%;height:50px;line-height:50px;border-radius:5px" >
        <h3 style="margin-left:10px;color:#fff" >QUẢN LÝ GIÀY</h3>
    </div>
       <asp:SqlDataSource ID="sqlGiay" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" DeleteCommand="DELETE FROM [Hang] WHERE [maHang] = @maHang" InsertCommand="INSERT INTO [Hang] ([maHang], [maHangGiay], [tenHang], [mau], [size], [gia], [anh], [gioiTinh], [soLuongCon], [moTa], [ngayNhap]) VALUES (@maHang, @maHangGiay, @tenHang, @mau, @size, @gia, @anh, @gioiTinh, @soLuongCon, @moTa, @ngayNhap)" SelectCommand="SELECT * FROM [Hang]" UpdateCommand="UPDATE [Hang] SET [maHangGiay] = @maHangGiay, [tenHang] = @tenHang, [mau] = @mau, [size] = @size, [gia] = @gia, [anh] = @anh, [gioiTinh] = @gioiTinh, [soLuongCon] = @soLuongCon, [moTa] = @moTa, [ngayNhap] = @ngayNhap WHERE [maHang] = @maHang">
           <DeleteParameters>
               <asp:Parameter Name="maHang" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="maHang" Type="String" />
               <asp:Parameter Name="maHangGiay" Type="String" />
               <asp:Parameter Name="tenHang" Type="String" />
               <asp:Parameter Name="mau" Type="String" />
               <asp:Parameter Name="size" Type="Double" />
               <asp:Parameter Name="gia" Type="Double" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="gioiTinh" Type="String" />
               <asp:Parameter Name="soLuongCon" Type="Int32" />
               <asp:Parameter Name="moTa" Type="String" />
               <asp:Parameter Name="ngayNhap" Type="DateTime" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="maHangGiay" Type="String" />
               <asp:Parameter Name="tenHang" Type="String" />
               <asp:Parameter Name="mau" Type="String" />
               <asp:Parameter Name="size" Type="Double" />
               <asp:Parameter Name="gia" Type="Double" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="gioiTinh" Type="String" />
               <asp:Parameter Name="soLuongCon" Type="Int32" />
               <asp:Parameter Name="moTa" Type="String" />
               <asp:Parameter Name="ngayNhap" Type="DateTime" />
               <asp:Parameter Name="maHang" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>

       <asp:GridView ID="grdGiay" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="maHang" DataSourceID="sqlGiay" Width="100%" PageSize="5" OnRowUpdated="grdGiay_RowUpdated" OnRowCommand="grdGiay_RowCommand" OnRowDeleted="grdGiay_RowDeleted">
           <Columns>
               <asp:BoundField DataField="maHang" HeaderText="Mã hàng" ReadOnly="True" SortExpression="maHang" >
               <ItemStyle Width="72px" />
               </asp:BoundField>
               <asp:BoundField DataField="maHangGiay" HeaderText="Mã hãng" SortExpression="maHangGiay" >
               <ItemStyle Width="60px" />
               </asp:BoundField>
               <asp:BoundField DataField="tenHang" HeaderText="Tên hàng" SortExpression="tenHang">
               <ItemStyle Width="190px" />
               </asp:BoundField>
               <asp:BoundField DataField="mau" HeaderText="Màu" SortExpression="mau" >
               <ItemStyle Width="108px" />
               </asp:BoundField>
               <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" >
               <ItemStyle Width="30px" />
               </asp:BoundField>
               <asp:BoundField DataField="gia" HeaderText="Giá" SortExpression="gia" >
               <ItemStyle Width="63px" />
               </asp:BoundField>
               <asp:BoundField DataField="gioiTinh" HeaderText="Giới tính" SortExpression="gioiTinh" >
               <ItemStyle Width="60px" />
               </asp:BoundField>
               <asp:ImageField DataImageUrlField="anh" DataImageUrlFormatString="../Image/{0}" HeaderText="Ảnh">
                   <ControlStyle Height="100px" Width="100px" />
                   <ItemStyle Height="100px" Width="100px" />
               </asp:ImageField>
               <asp:BoundField DataField="soLuongCon" HeaderText="Còn" SortExpression="soLuongCon" >
               <ItemStyle Width="30px" />
               </asp:BoundField>
               <asp:BoundField DataField="moTa" HeaderText="Mô tả" SortExpression="moTa">
               <ControlStyle Width="200px" />
               <ItemStyle CssClass="scroll" Height="100px" Width="200px" HorizontalAlign="Center" VerticalAlign="Middle" />
               </asp:BoundField>
               <asp:BoundField DataField="ngayNhap" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày nhập" SortExpression="ngayNhap" />
               <asp:CommandField DeleteText="Xoá" ShowDeleteButton="True" ButtonType="Button" >
               <ControlStyle CssClass="btn" />
               </asp:CommandField>
               <asp:HyperLinkField DataNavigateUrlFields="maHang" DataNavigateUrlFormatString="~/admin/SuaGiay.aspx?maHang={0}" NavigateUrl="~/admin/SuaGiay.aspx" Text="Sửa">
               <ControlStyle CssClass="btnSua" />
               </asp:HyperLinkField>
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
       <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
       <br />
       <h3>Thêm giày</h3>
       <br />
       <asp:LinkButton ID="btnThem" runat="server" CssClass="btnThem" OnClick="btnThem_Click" >Thêm mới</asp:LinkButton>
       <%--<h3>Thêm mặt hà</h3>--%>
       
  </form>
    <style>
        .btnThem{
                       padding: 5px 10px;
            background-color:#20c997;border:0px;width:45px;height:30px;border-radius:3px;color:#fff;margin:5px;
            text-decoration:none;
        }
        td{
         text-align:center
              
        }
        .btn{
            background-color:#f86c6b;border:0px;width:45px;height:30px;border-radius:3px;color:#fff;margin:5px;
        }

        tr{
            color:#2f353a
        }
        textarea{
            color:#2f353a;
            font-size:13px;
        }
        form{
            font-size:14px
        }
        input{
           border-width: 1px 0px;
           height: 20px;
           font-size:15px;
        }
        .txtSua{
            border: 2px solid #acb4bc;
            border-radius: 4px;
          
        }
        .title{
            margin-left:50px;
        }
        .btnSua{
            padding: 5px 10px;
            background-color:#20a8d8;border:0px;width:45px;height:30px;border-radius:3px;color:#fff;margin:5px;
            text-decoration:none;
        }
        </style>
   </asp:Content>

