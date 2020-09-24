<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        font-size: x-large;
    }
        .auto-style7 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style6" colspan="2"><strong><em>Mesaj Paneli</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txt_as" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail :</strong></td>
        <td>
            <asp:TextBox ID="txt_mailad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="txt_konu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txt_mesaj" runat="server" CssClass="auto-style7" Height="67px" TextMode="MultiLine" Width="244px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Gönder" Width="150px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

