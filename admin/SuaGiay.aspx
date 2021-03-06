﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="SuaGiay.aspx.cs" Inherits="admin_SuaGiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .error{
            color:red;
            margin:3px;
        }
        td{
            height:30px;
            font-size:16px;
            width:145px;
        }
        input{
             border: 1px solid #acb4bc;
            border-radius: 2px;
            height:25px;
            margin:2px 0px;
        }
        .btnSua{
            padding: 5px 10px;
            background-color:#4dbd74;border:0px;width:45px;height:30px;border-radius:3px;color:#fff;margin:5px;
            text-decoration:none;
        }
        .btnHuy{
            padding: 5px 10px;
            background-color:#20a8d8;border:0px;width:45px;height:30px;border-radius:3px;color:#fff;margin:5px;
            text-decoration:none;
        }
        .btn{
            background-color:#ffc107;border:0px;width:45px;border-radius:2px;color:#fff;margin:5px;
        }
    </style>
    <asp:Label ID="lbThongBao" runat="server" Text="" CssClass="error"></asp:Label><br />
    <h3>Thêm giày</h3>
    <form id="form1" runat="server" style="justify-content:center;display:flex" >
       
        <asp:SqlDataSource ID="sqlHangGiay" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT * FROM [HangGiay]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGiay" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" DeleteCommand="DELETE FROM [Hang] WHERE [maHang] = @maHang" InsertCommand="INSERT INTO [Hang] ([maHang], [maHangGiay], [tenHang], [mau], [size], [gia], [anh], [gioiTinh], [soLuongCon], [moTa], [ngayNhap]) VALUES (@maHang, @maHangGiay, @tenHang, @mau, @size, @gia, @anh, @gioiTinh, @soLuongCon, @moTa, @ngayNhap)" SelectCommand="SELECT * FROM [Hang] WHERE ([maHang] = @maHang)" UpdateCommand="UPDATE [Hang] SET [maHangGiay] = @maHangGiay, [tenHang] = @tenHang, [mau] = @mau, [size] = @size, [gia] = @gia, [anh] = @anh, [gioiTinh] = @gioiTinh, [soLuongCon] = @soLuongCon, [moTa] = @moTa, [ngayNhap] = @ngayNhap WHERE [maHang] = @maHang">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="maHang" QueryStringField="maHang" Type="String" />
        </SelectParameters>
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
    <asp:FormView ID="frmGiay" runat="server" DataKeyNames="maHang" DataSourceID="sqlGiay" DefaultMode="Edit" Width="615px" OnItemUpdated="frmGiay_ItemUpdated" OnItemUpdating="frmGiay_ItemUpdating">
        <EditItemTemplate>
            <br />
            <table style="width: 615px;">
                <tr>
                    <td>Mã giày</td>
                    <td >
                        <asp:Label ID="maHangLabel1" runat="server" Text='<%# Eval("maHang") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Mã hãng giày</td>
                    <td>
                        
                        <asp:DropDownList ID="ddlHangGiay" runat="server" DataSourceID="sqlHangGiay" DataTextField="tenHangGiay" DataValueField="maHangGiay" OnSelectedIndexChanged="ddlHangGiay_SelectedIndexChanged" AutoPostBack="True" Width="180px"></asp:DropDownList>
                      
                        <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' Enabled="False" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập hãng giày " ControlToValidate="maHangGiayTextBox"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td>Tên hàng</td>
                    <td ">
                        <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Bạn cần nhập mã hàng" Text="Bạn cần nhập tên hàng" ForeColor="Red" ControlToValidate="tenHangTextBox"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Màu</td>
                    <td ">
                        <asp:TextBox ID="mauTextBox" runat="server" Text='<%# Bind("mau") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Bạn cần nhập mã hàng" Text="Bạn cần nhập màu" ForeColor="Red" ControlToValidate="mauTextBox"></asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td>Size</td>
                    <td ">
                        <asp:TextBox ID="sizeTextBox" runat="server" Text='<%# Bind("size") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập size" ForeColor="Red" ControlToValidate="sizeTextBox"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Giá</td>
                    <td ">
                        <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập giá" ForeColor="Red" ControlToValidate="giaTextBox"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                
                <tr>
                    <td>Giới tính</td>
                    <td >
                        <asp:TextBox ID="gioiTinhTextBox" runat="server" Text='<%# Bind("gioiTinh") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập giới tính" ControlToValidate="gioiTinhTextBox" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Số lượng còn</td>
                    <td>
                        <asp:TextBox ID="soLuongConTextBox" runat="server" Text='<%# Bind("soLuongCon") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập số lượng" ControlToValidate="soLuongConTextBox" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>Mô tả</td>
                    <td >
                        <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' Height="100px" TextMode="MultiLine" Width="200px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập mô tả" ControlToValidate="moTaTextBox"></asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td>Ngày nhập </td>
                    <td >
                        <asp:TextBox ID="ngayNhapTextBox" runat="server" Text='<%# Bind("ngayNhap", "{0:dd/MM/yyyy}") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Bạn cần nhập mã hàng" Text="Bạn cần nhập ngày nhập" ControlToValidate="ngayNhapTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td>Ảnh</td>
                    <td ">
                        <asp:FileUpload ID="fileAnh" runat="server" Width="120px" OnDataBinding="fileAnh_DataBinding" />
                          <asp:Button ID="btnPostBack" runat="server" Text="OK" CssClass="btn" OnClick="btnPostBack_Click" />
                       <div style="text-align: center; width: 174px; height: 90px;">
                                  <asp:Image ID="imgAnh" runat="server" Width="90px" Height="90px" />
                            </div>
                         <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' Enabled="False" />
                        
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px"></td>
                    <td ></td>
                </tr>
            </table>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" CssClass="btnSua" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Hủy" Text="Cancel" CssClass="btnHuy" PostBackUrl="~/admin/Giay.aspx" />
            <br />
            
        </EditItemTemplate>
        <InsertItemTemplate>
            maHang:
            <asp:TextBox ID="maHangTextBox" runat="server" Text='<%# Bind("maHang") %>' />
            <br />
            maHangGiay:
            <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' />
            <br />
            tenHang:
            <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
            <br />
            mau:
            <asp:TextBox ID="mauTextBox" runat="server" Text='<%# Bind("mau") %>' />
            <br />
            size:
            <asp:TextBox ID="sizeTextBox" runat="server" Text='<%# Bind("size") %>' />
            <br />
            gia:
            <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
            <br />
            anh:
            <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            gioiTinh:
            <asp:TextBox ID="gioiTinhTextBox" runat="server" Text='<%# Bind("gioiTinh") %>' />
            <br />
            soLuongCon:
            <asp:TextBox ID="soLuongConTextBox" runat="server" Text='<%# Bind("soLuongCon") %>' />
            <br />
            moTa:
            <asp:TextBox ID="moTaTextBox" runat="server" Text='<%# Bind("moTa") %>' />
            <br />
            ngayNhap:
            <asp:TextBox ID="ngayNhapTextBox" runat="server" Text='<%# Bind("ngayNhap") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            maHang:
            <asp:Label ID="maHangLabel" runat="server" Text='<%# Eval("maHang") %>' />
            <br />
            maHangGiay:
            <asp:Label ID="maHangGiayLabel" runat="server" Text='<%# Bind("maHangGiay") %>' />
            <br />
            tenHang:
            <asp:Label ID="tenHangLabel" runat="server" Text='<%# Bind("tenHang") %>' />
            <br />
            mau:
            <asp:Label ID="mauLabel" runat="server" Text='<%# Bind("mau") %>' />
            <br />
            size:
            <asp:Label ID="sizeLabel" runat="server" Text='<%# Bind("size") %>' />
            <br />
            gia:
            <asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia") %>' />
            <br />
            anh:
            <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            gioiTinh:
            <asp:Label ID="gioiTinhLabel" runat="server" Text='<%# Bind("gioiTinh") %>' />
            <br />
            soLuongCon:
            <asp:Label ID="soLuongConLabel" runat="server" Text='<%# Bind("soLuongCon") %>' />
            <br />
            moTa:
            <asp:Label ID="moTaLabel" runat="server" Text='<%# Bind("moTa") %>' />
            <br />
            ngayNhap:
            <asp:Label ID="ngayNhapLabel" runat="server" Text='<%# Bind("ngayNhap") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        
    </form>
</asp:Content>

