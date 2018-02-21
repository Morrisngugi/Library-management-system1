<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmStudents.aspx.cs" Inherits="OnlineLibraryManagementSystem.frmStudents" %>

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
                                <h2 class="margin-bottom-10">New Student</h2>
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
                            <asp:Label ID="Label6" runat="server" Text="Surname Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtFname" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label12" runat="server" Text="Middle Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMname" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label13" runat="server" Text="last Name" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtLname" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label14" runat="server" Text="Admission Number" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtAdm" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
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
                            <asp:DropDownList ID="DropDownClass" runat="server">
                                <asp:ListItem>FORM 1</asp:ListItem>
                                <asp:ListItem>FORM 2</asp:ListItem>
                                <asp:ListItem>FORM 3</asp:ListItem>
                                <asp:ListItem>FORM 4</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label16" runat="server" Text="Date Of Admission" CssClass="myLabels"></asp:Label>
                        </div>

                        <div class="col-md-3">
                            <asp:TextBox ID="txtDOA" runat="server" Width="100%" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label18" runat="server" Text="Expiry Date" CssClass="myLabels"></asp:Label>
                        </div>

                        <div class="col-md-3">
                            <asp:TextBox ID="txtExpiry" runat="server" Width="100%" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label19" runat="server" Text="Password" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtpass" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <asp:Label ID="Label20" runat="server" Text="Confirm Password" CssClass="myLabels"></asp:Label>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtConfPass" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
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
                            <asp:Button ID="cmdStdCancel" runat="server" Text="Cancel" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdStdCancel_Click" />
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="cmdStdSafe" runat="server" Text="Save" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdStdSafe_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="col-md-4 col-md-offset-3">
                        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" Font-Size="Medium" ForeColor="Purple"></asp:Label>
                    </div>
                    <br />
                    <br />
                </div>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
