<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminfTarifler.aspx.cs" Inherits="AdminfTarifler" %>

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
        .auto-style8 {
            width: 246px;
            text-align: left;
        }
        .auto-style9 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                </td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                     <a href="AdminTarifler.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/Öneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"    />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"    />
                </td>
                <td>ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                     <a href="AdminTarifler.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/Öneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

