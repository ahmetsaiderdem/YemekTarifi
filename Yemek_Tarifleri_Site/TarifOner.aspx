<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 26px;
    }
    .auto-style4 {
        height: 26px;
        text-align: right;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        margin-left: 56px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Tarif Malzemeler:</strong></td>
        <td class="auto-style3">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Yapılış:</strong></td>
        <td class="auto-style3">
            <asp:TextBox ID="TxtYapılıs" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Resim:</strong></td>
        <td class="auto-style3">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style3">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Mail Adresi</strong></td>
        <td class="auto-style3">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Btn_TarifOner" runat="server" BackColor="#FFCC99" CssClass="fb8" Height="40px" Text="Tarif Öner" Width="150px" OnClick="Btn_TarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>

