<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        <strong>Hakkımızda</strong></p>
    <p class="auto-style3">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:image runat="server" Height="146px" ImageUrl="~/Resim/blogpic.png" Width="394px" CssClass="auto-style4"></asp:image>
</asp:Content>

