<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminYorumDetay.aspx.cs" Inherits="AdminYorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
    }
    .auto-style4 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txt_adsoyad" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="txt_mail" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>İçerik:</strong></td>
        <td>
            <asp:TextBox ID="txt_içerik" runat="server" Height="66px" TextMode="MultiLine" Width="197px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Yemek:</strong></td>
        <td>
            <asp:TextBox ID="txt_yemek" runat="server" Width="198px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="btn_onayla" runat="server" CssClass="auto-style4" OnClick="btn_onayla_Click" style="height: 29px" Text="Onayla" Width="111px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

