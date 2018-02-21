<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAdmin.aspx.cs" Inherits="OnlineLibraryManagementSystem.frmAdmin" %>

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


        <div class="templatemo-top-nav-container">
            <div class="row">
                <div class="col-md-4"> <h2>Library Management System</h2></div>  
                <div class="col-md-8">
                    <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li>
                            <asp:LinkButton ID="lnkLogOut" runat="server" ToolTip="Log Out" OnClick="lnkLogOut_Click">Log Out </asp:LinkButton>
                        </li>
                    </ul>
                </nav></div>             
                
            </div>
        </div>

      
      <div class="templatemo-content-widget white-bg">
                <h2 class="margin-bottom-10">Administrator </h2>
                <ul class="text-uppercase">
                    <li>
                        <asp:Label ID="lblUserName" runat="server" Text="User Name" Visible="true" Font-Size="Large" Font-Names="century gothic"></asp:Label></li>
                </ul>
               

                <div class="row">
                    <div class="col-md-3">
                        <div id="related-activities">
                            <!--  start related-act-bottom -->
                            <div id="related-act-bottom">
                                <!--  start related-act-inner -->
                                <div id="related-act-inner">
                                    <div class="right" >
                                        <h5 >Users</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="lnkAddUser" runat="server" ToolTip="Add User" OnClick="lnkAddUser_Click">Add</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkListUsers" runat="server" ToolTip="List Users" OnClick="lnkListUsers_Click">List</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="LnkUpdateUsers" runat="server" ToolTip="Update User" OnClick="LinkUpdateUsers_Click">Update</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkDeleteUser" runat="server" ToolTip="Delete User">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                    <div class="right">
                                        <h5>Books</h5>
                                        <ul class="greyarrow">
                                            <li>
                                                <asp:LinkButton ID="LinkButton1" runat="server" ToolTip="List Books">List</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton2" runat="server" ToolTip="Add Books">Add</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton3" runat="server" ToolTip="Update Books">Update</asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton4" runat="server" ToolTip="Delete Books">Delete</asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- end related-act-inner -->
                            </div>
                            <!-- end related-act-bottom -->
                        </div>
                    </div>
                    <%-----------------------------------------------------Start of pannels----------------------------------------------------------------------------%>
                    <div class="col-md-9">
                        <div class="row">
                    <%--------------------------------------------------------pannelAdduser window----------------------------------------------------------------------%>
                            <asp:Panel ID="panelAddUserWindow" runat="server" Visible="false" CssClass="">
                                <div class="panel panel-default" >
                                    <div class="panel-heading">
                                        <!--<i class="fa fa-files-o fa-fw"></i>-->
                                        <div class="row">
                                            <div class="col-md-5 col-lg-offset-0">
                                                <h2 class="margin-bottom-10">New User</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-md-2">
                                            <asp:Label ID="Label8" runat="server" Text="First Name" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtFirstName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label ID="Label1" runat="server" Text="Middle Name" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtMiddleName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-2">
                                            <asp:Label ID="Label2" runat="server" Text="last Name" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtLastName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label ID="Label3" runat="server" Text="Email" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtEmail" runat="server" Width="100%" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-2">
                                            <asp:Label ID="Label4" runat="server" Text="Phone Number" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtPhone" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label ID="Label5" runat="server" Text="Gender" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:DropDownList ID="GenderDropDown" runat="server">
                                                <asp:ListItem>MALE</asp:ListItem>
                                                <asp:ListItem>FEMALE</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-2">
                                            <asp:Label ID="Label6" runat="server" Text="User Name" CssClass="myLabels"></asp:Label>
                                        </div>
                                         <div class="col-md-8">
                                            <asp:TextBox ID="txtUserName" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                        </div>                                      
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-2">
                                            <asp:Label ID="Label7" runat="server" Text="Password" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtPassword" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:Label ID="Label9" runat="server" Text="Confirm Password" CssClass="myLabels"></asp:Label>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox ID="txtConfPassword" runat="server" Width="100%" CssClass="form-control" TextMode="Password"></asp:TextBox>
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
                                            <asp:Button ID="cmdCancel" runat="server" Text="Cancel" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdCancel_Click" />
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Button ID="cmdSave" runat="server" Text="Save" Width="100%" CssClass="templatemo-edit-btn" OnClick="cmdSave_Click" />
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
                            <%-----------------------------------------pannelAllUsers------------------------------------------------------------------------------------%>
                            <asp:Panel ID="panelAllUsers" runat="server" Visible="false" CssClass="">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                <h2 class="">All Users </h2>
                                        </div>
                                <asp:Label ID="Label25" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                <asp:LinkButton ID="LinkButton5" runat="server" Visible="false">Click Here</asp:LinkButton>
                                <br />
                                <div class="row">
                                    <div class="col-md-10">
                                        <asp:GridView ID="gvAllUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Width="100%">
                                        </asp:GridView>
                                    </div>
                                </div>
                                    </div>
                            </asp:Panel>
                            <!-------------------------------------------Pannel Update Users-------------------------------------------------------------------->
                            <asp:Panel ID="panelUpdateUserWindow" runat="server" Visible="false" CssClass="panelsX">
                                <h2 class="margin-bottom-10">User Details</h2>
                                <br />

                                <div class="row">
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="dlSearchCriteria" runat="server" CssClass="form-control">
                                            <asp:ListItem>First Name</asp:ListItem>
                                            <asp:ListItem>Last Name</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-5">
                                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" Width="100%" ToolTip="Enter Search Term" Visible="true"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="templatemo-edit-btn" ToolTip="Search" Visible="true"  OnClick="cmdSearch_Click"/>
                                    </div>
                                </div>
                                <!--------------------------------------------->
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Label ID="lblResult1" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                                        <asp:LinkButton ID="lnkResult1" runat="server" Visible="false" OnClick="lnkResult1_Click">Click Here</asp:LinkButton>
                                        <br />
                                        <asp:GridView ID="gvUsers" runat="server" CssClass="table table-striped table-bordered templatemo-user-table" Visible="False" PageSize="5">
                                            <Columns>
                                                <asp:CommandField HeaderText="Choose" ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>

                                        <asp:Panel ID="panelUpdateUsers" runat="server" Visible="true">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label11" runat="server" Text="First Name " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUF" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label12" runat="server" Text="Middle Name " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUM" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label13" runat="server" Text="Last Name " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUL" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label14" runat="server" Text="Email " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUE" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label15" runat="server" Text="Phone Number" CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUP" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label16" runat="server" Text="Gender " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUG" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label17" runat="server" Text="Department " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUD" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label18" runat="server" Text="Department ID " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUDI" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label19" runat="server" Text="User Name " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtResultUU" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">
                                                    <asp:Label ID="Label20" runat="server" Text="Password " CssClass="myLabels"></asp:Label>
                                                </div>
                                                <div class="col-md-3">
                                                    <asp:TextBox ID="txtresultUPA" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>

                                            <br />
                                           <div class="row">
                                    <div class="col-md-2 col-lg-offset-2">
                                        <asp:Button ID="cmdUpdate" runat="server" Text="Update" Width="100%" CssClass="btn btn-warning" />
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Button ID="cmdDelete" runat="server" Text="Delete" Width="100%" CssClass="btn btn-danger" />
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Button ID="Button1" runat="server" Text="Cancel" Width="100%" CssClass="btn btn- alert-dismissible" />
                                    </div>
                                </div>

                                        </asp:Panel>
                                    </div>
                                </div>
                            </asp:Panel>


                        </div>
                    </div>
                    <!--End of pannels--->
                </div>
            </div>
           
        
            <footer class="text-center">
                <p>
                    Copyright &copy; 2016 OLM. Designed by <a href="#" target="">MORRIS</a>
                </p>
            </footer>
    </form>
</body>
</html>
