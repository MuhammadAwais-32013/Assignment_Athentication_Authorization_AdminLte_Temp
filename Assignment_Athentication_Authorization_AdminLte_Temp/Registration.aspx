<%@ Page Title="" Language="C#" MasterPageFile="~/AdminlteTempelate.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Assignment_Athentication_Authorization_AdminLte_Temp.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Registration Form -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">User Registration</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Register Your Account</h3>
                        </div>
                        <!-- Form Start -->
                     
                            <div class="card-body">
                                <!-- Name Field -->
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Name" CssClass="control-label"></asp:Label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                                </div>

                                <!-- Email Field -->
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Email" CssClass="control-label"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                                </div>

                                <!-- Password Field -->
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Password" CssClass="control-label"></asp:Label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                                </div>

                                <!-- Department Dropdown -->
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Department" CssClass="control-label"></asp:Label>
                                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Department" Value="" />
                                        <asp:ListItem Text="Computer Science" Value="CS" />
                                        <asp:ListItem Text="Software Engineering" Value="SE" />
                                        <asp:ListItem Text="AI" Value="AI" />
                                        <asp:ListItem Text="IT" Value="IT" />
                                    </asp:DropDownList>
                                </div>

                                <!-- Role Selection -->
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Role" CssClass="control-label"></asp:Label>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rbStudent" runat="server" GroupName="Role" Text="Student" CssClass="form-check-input" />
                                        <asp:Label AssociatedControlID="rbStudent" runat="server" CssClass="form-check-label">Student</asp:Label>
                                    </div>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rbTeacher" runat="server" GroupName="Role" Text="Teacher" CssClass="form-check-input" />
                                        <asp:Label AssociatedControlID="rbTeacher" runat="server" CssClass="form-check-label">Teacher</asp:Label>
                                    </div>
                                </div>
                            </div>
                            <!-- Form Footer -->
                            <div class="card-footer">
                                <asp:Button ID="btnReg" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnReg_Click" />
                                <a href="Login.aspx" class="btn btn-secondary">Login</a>
                            </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
