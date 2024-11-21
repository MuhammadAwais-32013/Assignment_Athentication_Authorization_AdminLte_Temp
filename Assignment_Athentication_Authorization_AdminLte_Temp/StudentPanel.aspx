<%@ Page Title="Student Panel" Language="C#" MasterPageFile="~/AdminlteTempelate.Master" AutoEventWireup="true" CodeBehind="StudentPanel.aspx.cs" Inherits="Assignment_Athentication_Authorization_AdminLte_Temp.StudentPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Student Panel</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Student Panel</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- Profile Information Card -->
                <div class="col-md-6 offset-md-3">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Profile Information</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Name:</label>
                                <asp:Label ID="lblName" runat="server" CssClass="form-control"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label>Department:</label>
                                <asp:Label ID="lblDepartment" runat="server" CssClass="form-control"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label>Role:</label>
                                <asp:Label ID="lblRole" runat="server" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                         <div class="card-footer">
     <asp:Button runat="server" ID="btnlogout" Text="Logout" OnClick="btnlogout_Click" />
 </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
