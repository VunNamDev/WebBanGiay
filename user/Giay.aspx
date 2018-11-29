<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Giay.aspx.cs" Inherits="user_Giay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="min-height:400px" >
        <h1>
            &nbsp;</h1>
        <p>
            &nbsp;</p>
            <asp:SqlDataSource ID="sqlGiay" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DBWebBanGiayConnectionString %>" SelectCommand="SELECT [maHang], [maHangGiay], [tenHang], [gia], [anh] FROM [Hang] WHERE ([maHangGiay] = @maHangGiay)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="maHangGiay" QueryStringField="maHangGiay" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="maHang" DataSourceID="sqlGiay" GroupItemCount="3" style="margin-bottom: 0px">
            <AlternatingItemTemplate>
                <td runat="server" style="padding: 25px; margin: 25px; border: 1px solid #000000; text-align: center; vertical-align: middle; background-color: #FFFFFF; width: 200px;">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Middle" ImageUrl='<%# Eval("anh", "~/Image/{0}") %>' Width="150px" />
                    <br />
                    <br />
                    <asp:Label ID="tenHangLabel" runat="server" Height="50px" Text='<%# Eval("tenHang") %>' Width="200px" />
                    <br />
                    <br />
                    <asp:Label ID="giaLabel" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("gia") %>' />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text=" đ"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" PostBackUrl='<%# Eval("maHang", "~/user/ChiTietDoiGiay.aspx?maGiay={0}") %>' Width="100px">Chi tiết</asp:LinkButton>
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">maHang:
                    <asp:Label ID="maHangLabel1" runat="server" Text='<%# Eval("maHang") %>' />
                    <br />maHangGiay:
                    <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' />
                    <br />tenHang:
                    <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
                    <br />gia:
                    <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                    <br />anh:
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">maHang:
                    <asp:TextBox ID="maHangTextBox" runat="server" Text='<%# Bind("maHang") %>' />
                    <br />maHangGiay:
                    <asp:TextBox ID="maHangGiayTextBox" runat="server" Text='<%# Bind("maHangGiay") %>' />
                    <br />tenHang:
                    <asp:TextBox ID="tenHangTextBox" runat="server" Text='<%# Bind("tenHang") %>' />
                    <br />gia:
                    <asp:TextBox ID="giaTextBox" runat="server" Text='<%# Bind("gia") %>' />
                    <br />anh:
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="padding: 25px; margin: 25px; border: 1px solid #000000; text-align: center; vertical-align: middle; background-color: #FFFFFF; width: 200px;">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Middle" ImageUrl='<%# Eval("anh", "~/Image/{0}") %>' Width="150px" />
                    <br />
                    <br />
                    <asp:Label ID="tenHangLabel" runat="server" Height="50px" Text='<%# Eval("tenHang") %>' Width="200px" />
                    <br />
                    <br />
                    <asp:Label ID="giaLabel" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("gia") %>' />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text=" đ"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" PostBackUrl='<%# Eval("maHang", "~/user/ChiTietDoiGiay.aspx?maGiay={0}") %>' Width="100px">Chi tiết</asp:LinkButton>
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server" style="width: 200px; ">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="width: 200px; text-align: center; vertical-align: middle;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="false" ShowPreviousPageButton="true" FirstPageText="Trang đầu" PreviousPageText="Quay lại" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="true" ShowPreviousPageButton="false"  LastPageText="Trang cuối" NextPageText="Tiếp theo"/>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">maHang:
                    <asp:Label ID="maHangLabel" runat="server" Text='<%# Eval("maHang") %>' />
                    <br />maHangGiay:
                    <asp:Label ID="maHangGiayLabel" runat="server" Text='<%# Eval("maHangGiay") %>' />
                    <br />tenHang:
                    <asp:Label ID="tenHangLabel" runat="server" Text='<%# Eval("tenHang") %>' />
                    <br />gia:
                    <asp:Label ID="giaLabel" runat="server" Text='<%# Eval("gia") %>' />
                    <br />anh:
                    <asp:Label ID="anhLabel" runat="server" Text='<%# Eval("anh") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        
    </div>
</asp:Content>

