<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 100%;
            height: 370px;
        }
    .auto-style7 {
        font-size: large;
    }
    
    
    .auto-style8 {
        text-align: left;
        height: 32px;
    }
    .auto-style9 {
        text-align: right;
    }
    
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <strong><span class="auto-style7">Malzemeler:</span></strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong><span class="auto-style7">Tarif:</span></strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" Height="161px" ImageUrl="~/Resim/2611577_1200x627.jpg" Width="383px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <table class="auto-style1">
                            <tr>
                                <td><strong><span class="auto-style7">Puan: </span></strong>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong><span class="auto-style7">Tarih:</span></strong>&nbsp;<em><asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

