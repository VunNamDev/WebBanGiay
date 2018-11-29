<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="user_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:400px;" >
       <table style="width: 77%">
             <tr>
                 <td>
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
        <strong>
        <asp:Label ID="Label1" runat="server" ForeColor="White"  Text="GIỎ HÀNG" CssClass="auto-style1" style="font-size: medium"></asp:Label>
            </strong>
                   </div>&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" OnRowCommand="GridView1_RowCommand" PageSize="3" Width="783px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                         <Columns>
                             <asp:TemplateField HeaderText="Mã Giày">
                                 <ItemTemplate>
                                     <asp:Label ID="lblMa" runat="server" Text='<%# Eval("maHang") %>'></asp:Label>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" />
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Tên Giày">
                                 <ItemTemplate>
                                     <asp:Label ID="lblTen" runat="server" Text='<%# Eval("tenHang") %>'></asp:Label>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" />
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="size">
                                 <ItemTemplate>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" />
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Số Lượng">
                                 <ItemTemplate>
                                     <asp:TextBox ID="txtSL" runat="server" Height="16px" Text='<%# Eval("soLuong") %>' Width="27px"></asp:TextBox>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Giá">
                                 <ItemTemplate>
                                     <asp:Label ID="lblGia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" />
                             </asp:TemplateField>
                             <asp:TemplateField HeaderText="Thành tiền">
                                 <ItemTemplate>
                                     <asp:Label ID="Label2" runat="server" Text='<%# float.Parse(Eval("Gia").ToString())*int.Parse(Eval("soLuong").ToString()) %>'></asp:Label>
                                 </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Center" />
                             </asp:TemplateField>
                             <asp:ButtonField ButtonType="Button" Text="Cập nhật" >
                             <ControlStyle BackColor="#6666FF" BorderColor="#66CCFF" ForeColor="White" />
                             <FooterStyle BackColor="#3366FF" BorderColor="#66FFFF" BorderStyle="Dotted" ForeColor="White" />
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:ButtonField>
                         </Columns>
                         <EmptyDataTemplate>
                             Không có hàng trong giỏ
                         </EmptyDataTemplate>
                         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                         <RowStyle BackColor="White" ForeColor="#003399" />
                         <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                         <SortedAscendingCellStyle BackColor="#EDF6F6" />
                         <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                         <SortedDescendingCellStyle BackColor="#D6DFDF" />
                         <SortedDescendingHeaderStyle BackColor="#002876" />
                     </asp:GridView>
                 </td>
             </tr>
             <tr>
                 <td style="height: 21px">
                     <asp:Label ID="lblTT" runat="server" BackColor="White" ForeColor="Black" Text="Tổng Tiền Phải Thanh Toán:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="lblTongTien" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tiếp Tục Thanh Toán" Width="132px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button2" runat="server" Text="Xóa Giỏ Hàng" Width="169px" OnClick="Button2_Click" />
                     <br />
                     <asp:Label ID="lblThongBao" runat="server"></asp:Label>
                 </td>
             </tr>
         </table>
         
        

        

     </div>

</asp:Content>
   

