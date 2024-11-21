<%@ Page Title="" Language="C#" MasterPageFile="~/AdminlteTempelate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_Athentication_Authorization_AdminLte_Temp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="card-body">
    <!-- Name Field -->
    <div class="form-group">
        <asp:Label runat="server" Text="Email" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" ></asp:TextBox>
    </div>

    <!-- Email Field -->
    <div class="form-group">
        <asp:Label runat="server" Text="Password" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtpss" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
    </div>
       <div class="card-footer">
       <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
       <a href="Registration.aspx" class="btn btn-secondary">SignUp</a>
   </div>
    </div>
</asp:Content>
