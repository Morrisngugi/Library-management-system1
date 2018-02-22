<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="OnlineLibraryManagementSystem.frmLogin" %>

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
<body class="light-gray-bg">
    <form id="form1" runat="server">

        <br />
        <br />
        <br />
        <br />
        <div class="templatemo-content-widget templatemo-login-widget white-bg">
            <div class="row">
                <div class="col-md-3">
                    <img src="images/lib.jpg" width="350" height="200" />
                </div>              
            </div>
           <br /> 
            <asp:Panel ID="PanelAdminLogin" runat="server" Visible="false">
                <div class="row">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="userName" ToolTip="Enter userName"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" ToolTip="Enter Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox squaredTwo">
                        <!--Remember Me Here---->
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="cmdLogin" runat="server" Text="Login" CssClass="templatemo-blue-button width-100" BackColor="DarkBlue" OnClick="cmdLogin_Click" />
                </div>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Size="Medium"></asp:Label> <asp:LinkButton ID="LinkButton4" runat="server" Visible="False">Support</asp:LinkButton>
            </div>               
            </asp:Panel>


            <asp:Panel ID="PanelStaffLogin" runat="server" Visible="false">
                <div class="row">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
                        <asp:TextBox ID="txtEmployeeNo" runat="server" CssClass="form-control" placeholder="Employee No:" ToolTip="Enter Employee Number"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" ToolTip="Enter Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox squaredTwo">
                        Not a registered Staff? <asp:LinkButton ID="LnkStaffRegister" runat="server" Font-Bold="true" Font-Size="Large" OnClick="LnkStaffRegister_Click">Register here</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="templatemo-blue-button width-100" BackColor="DarkBlue" OnClick="cmdLogin_Click" />
                </div>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Size="Medium"></asp:Label> <asp:LinkButton ID="LinkButton3" runat="server" Visible="False">Support</asp:LinkButton>
            </div>
            </asp:Panel>
            
            <asp:Panel ID="PanelStudentLogin" runat="server" Visible="false">
                <div class="row">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
                        <asp:TextBox ID="txtAdmissionNo" runat="server" CssClass="form-control" placeholder="Admission No:" ToolTip="Enter userName"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" ToolTip="Enter Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="checkbox squaredTwo">
                       Not a registered Student? <asp:LinkButton ID="LnkStudentRegistration" runat="server" Font-Bold="true" Font-Size="Large" OnClick="LnkStudentRegistration_Click">Register here</asp:LinkButton>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button2" runat="server" Text="Login" CssClass="templatemo-blue-button width-100" BackColor="DarkBlue" OnClick="cmdLogin_Click" />
                </div>
                    <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" Font-Size="Medium"></asp:Label> <asp:LinkButton ID="lnkSupport" runat="server" Visible="False">Support</asp:LinkButton>
            </div>
            </asp:Panel>



            
           
        </div>
        
        
    </form>

    <script>
        function show() {
            s = "<table width='100%' cellspacing='2' cellpadding='0' border='0'>'";
            //s += "'<tr><td><img src='images/HFC Logo.jpg' border='0'/> </td> <td valign='top'>WikiPedia</td></tr>'";
            s += "'<tr><td><img src='images/lib.jpg' border='0'/> </td> <td valign='top'>WikiPedia</td></tr>'";
            s += "'<tr><td colspan='2' class='Text'><hr/>this is a test for simple tooltip. <br/>You can add text and images to the tooltip</td></tr>'";
            s += "'</table>'";
            toolTip(s)
        }
    </script>
</body>
</html>
