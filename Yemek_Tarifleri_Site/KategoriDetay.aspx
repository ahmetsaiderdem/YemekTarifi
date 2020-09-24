<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }

        .auto-style7 {
            background-color: #eecd62;
        }
    
        .auto-style4 {
            font-size: x-large;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style6 {
            text-align: center;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td class="auto-style7"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarif:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Tarih:</strong><em><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #FF6666">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

