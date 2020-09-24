<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminMesajDetay.aspx.cs" Inherits="AdminMesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
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
            <td class="auto-style3">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txt_adsoyad" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Başlık:</td>
            <td>
                <asp:TextBox ID="txt_baslik" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail:</td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">İçerik:</td>
            <td>
                <asp:TextBox ID="txt_icerik" runat="server" Height="178px" TextMode="MultiLine" Width="209px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btn_güncelle" runat="server" OnClick="btn_güncelle_Click" Text="Güncelle" Width="124px" />
            </td>
        </tr>
    </table>
</asp:Content>

