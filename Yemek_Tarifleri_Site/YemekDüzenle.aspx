<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenleaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
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
            <td class="auto-style3"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Malzeme:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="61px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="70px" TextMode="MultiLine" Width="196px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" Width="115px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Günün Yemeği Seç" />
            </td>
        </tr>
    </table>
</asp:Content>

