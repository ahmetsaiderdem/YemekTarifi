<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifler.aspx.cs" Inherits="AdminTarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 100%;
        }
        .auto-style8 {
        height: 26px;
    }
        .auto-style9 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td>Tarif Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif Malzeme:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="227px" CssClass="auto-style9" Height="124px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Yapılış:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="113px" TextMode="MultiLine" Width="234px" CssClass="auto-style9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Resim:</td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Tarif Öneren:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Öneren Mail:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Kategori:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="207px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btn_onayla" runat="server" CssClass="fb8" OnClick="btn_onayla_Click" Text="Onayla" Width="200px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

