<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmEmployees.aspx.cs" Inherits="OnlineLibraryManagementSystem.frmEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/templatemo-style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs_style.css" />

    <title>Library Management System</title>
</head>

<body class=" light-gray-bg">
    <form id="form1" runat="server">
        <div class="templatemo-content-container col-md-10 col-md-offset-1">

            <asp:Panel ID="panelStudentsregistration" runat="server" Visible="true" CssClass="">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <!--<i class="fa fa-files-o fa-fw"></i>-->
                        <div class="row">
                            <div class="col-md-8 col-lg-offset-1">
                                <h2 class="margin-bottom-10">New Employee</h2>
                            </div>
                            <div class="col-md-2">
                                <h2>
                                    <asp:LinkButton ID="lnkBack" runat="server" ForeColor="Yellow" ToolTip="Go Back to Login Page" OnClick="lnkBack_Click">Back </asp:LinkButton></h2>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label6" runat="server" Text="First Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtFirstname" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label12" runat="server" Text="Middle Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMiddlename" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label1" runat="server" Text="last Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtLastname" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label2" runat="server" Text=" Email" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtEmail" runat="server" Width="100%" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label3" runat="server" Text="Contact Number " CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtContact" runat="server" Width="100%" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label4" runat="server" Text="Employee Number" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtEmployee" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label17" runat="server" Text="Gender" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="DropDownGender" runat="server">
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-md-2">
                            <asp:Label ID="Label15" runat="server" Text="Class" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList ID="DropDownDesignation" runat="server">
                                <asp:ListItem>HEAD TEACHER</asp:ListItem>
                                <asp:ListItem>D/HEAD TEACHER</asp:ListItem>
                                <asp:ListItem>CLASS TEACHER</asp:ListItem>
                                <asp:ListItem>NORMAL TEACHER</asp:ListItem>
                                <asp:ListItem>NON TEACHING STAFF</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label5" runat="server" Text="Password  " CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPassword" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label7" runat="server" Text="Confirm Password " CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPasswordConfirm" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label10" runat="server" Text="Status" CssClass="myLabels" Visible="false"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtstatus" runat="server" Width="100%" CssClass="form-control" Visible="false" Text="false"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                     <div class="row">
                        <div class="col-md-3 col-md-offset-2">
                            <asp:Button ID="cmdEmployeeCancel" runat="server" Text="Cancel" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdEmployeeCancel_Click"/>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdEmployeeSafe" runat="server" Text="Save" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdEmployeeSafe_Click"/>
                        </div>
                    </div>
                    <br />
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" Font-Size="Medium" ForeColor="Purple"></asp:Label>
                    </div>
                    <br />

                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
