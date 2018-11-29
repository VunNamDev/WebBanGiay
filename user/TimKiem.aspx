<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="TimKiem.aspx.cs" Inherits="user_TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .chiTiet{
            padding: 5px 20px;
            background-color:rgb(221, 0, 23);
            border-radius:3px;
            color:#fff;
            margin-top:10px;
        }
        .gia {
            padding: 20px 0px ;
            color: rgb(51, 55, 69);
            margin-bottom:10px;
            
        }
        .auto-style2 {
            height: 44px;
        }
        .auto-style3 {
            height: 58px;
        }
    </style>
    <br />
    <div style="min-height:400px" >
        <h1>
           
           
        </h1>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString2 %>" SelectCommand="SELECT * FROM [Hang] WHERE ([tenHang] LIKE '%' + @tenHang + '%')">
                <SelectParameters>
                    <asp:QueryStringParameter Name="tenHang" QueryStringField="tenHang" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="maHang" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                <br />
                <table style="width: 100%;text-align:center;">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("anh", "~/Image/{0}") %>' Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="tenHangLabel" runat="server" Text='<%# Eval("tenHang") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" >
                            <asp:Label ID="giaLabel" runat="server" Text='<%# Eval("gia") %>' CssClass="gia" />
                            d</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# Eval("maHang","~/user/ChiTietDoiGiay.aspx?maGiay={0}") %>' CssClass="chiTiet">Chi Tiết</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;<br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

