<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GününYemeğiAdmin.aspx.cs" Inherits="GününYemeğiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            background-color: #99CCFF;
            margin-top:15px;
        }
        .auto-style5 {
            width: 33px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style6 {
            width: 32px;
        }
        .auto-style4 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href='YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/seçim.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>

