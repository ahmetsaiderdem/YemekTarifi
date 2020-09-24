<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: 40pt;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: xx-small;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            background-color: #FF9966;
        }
    .auto-style8 {
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Yorum") %>'></asp:Label>
                        -<asp:Label ID="Label10" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style7">Yorum yapma paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td>Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Yorumunuz:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="83px" TextMode="MultiLine" Width="233px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="fb8" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

