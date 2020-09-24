<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            background-color: #99CCFF;
            margin-top:15px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 33px;
        }
        .auto-style6 {
            width: 32px;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                           <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style4">
                        <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/update.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="txt_adminktgad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori İcon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_adminekle" runat="server" CssClass="fb8" Text="Ekle" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

