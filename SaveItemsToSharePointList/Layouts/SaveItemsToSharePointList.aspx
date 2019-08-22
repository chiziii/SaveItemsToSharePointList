<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaveItemsToSharePointList.aspx.cs" Inherits="SaveItemsToSharePointList.Layouts.SaveItemsToSharePointList" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <body class="">
    <div class="wrapper ">
        <div class="sidebar" data-color="white" data-active-color="danger">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
            <div class="logo">
                <a href="#" class="simple-text logo-mini">
                    <div class="logo-image-small">
                        <img src="Quiz/img/logo-small.png">
                    </div>
                </a>
                <a href="#" class="simple-text logo-normal">
                    Eloni Quiz
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="active ">
                        <a href="./Admin.aspx">
                            <i class="nc-icon nc-bank"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>

                    <li>
                        <a href="./AdminTable.aspx">
                            <i class="nc-icon nc-tile-56"></i>
                            <p>Score board</p>
                        </a>
                    </li>
                    <li>
                        <a href="./AdminUpload.aspx">
                            <i class="nc-icon nc-cloud-upload-94"></i>
                            <p>Upload</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <div class="navbar-toggle">
                            <button type="button" class="navbar-toggler">
                                <span class="navbar-toggler-bar bar1"></span>
                                <span class="navbar-toggler-bar bar2"></span>
                                <span class="navbar-toggler-bar bar3"></span>
                            </button>
                        </div>
                        <a class="navbar-brand" href="#pablo">Add/Upload</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <form>
                            <div class="input-group no-border">
                             <asp:TextBox ID="AdminSearchInputSpace" runat="server"  class="form-control"></asp:TextBox>
                                <%--<input type="text" value="" class="form-control" placeholder="Search...">--%>
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <i class="nc-icon nc-zoom-split"></i>
                                         <div class="col-md-2">
                                    <asp:Button ID="AdminSearchButton" runat="server" Text="Search" OnClick="AdminSearchButton_Click" />
                                </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link btn-magnify" href="#pablo">
                                    <i class="nc-icon nc-layout-11"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Stats</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item btn-rotate dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="nc-icon nc-bell-55"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Some Actions</span>
                                    </p>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn-rotate" href="#pablo">
                                    <i class="nc-icon nc-settings-gear-65"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Account</span>
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->

            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-layout">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-8 card-top">
                                    <div class="input-question">
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="AdminQuestionNumberId" runat="server">Question ID</span>
                                            </div>
                                            <asp:TextBox ID="AdminquestionNumber1" class="form-control" runat="server"></asp:TextBox>
                                           <%-- <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" runat="server" id="AdminQuestionNumberIdLabel" />--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="AdminQuestionId" runat="server">Question</span>
                                            </div>
                                            <asp:TextBox ID="Adminquestion1" runat="server"></asp:TextBox>
                                            <%--<textarea class="form-control" id="AdminQuestionIdLabel" rows="3" runat="server"></textarea>--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="inputGroup-sizing-lg">
                                                    <input class="radio" type="radio" name="exampleRadios" value="option1">
                                                    Option 1</span>
                                            </div>
                                            <asp:TextBox ID="AdminOption1" runat="server"></asp:TextBox>
                                           <%-- <input type="text" class="form-control" id="AdminOption1" runat="server" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="inputGroup-sizing-lg">
                                                    <input class="radio" type="radio" name="exampleRadios" id="" value="option2">
                                                    Option 2</span>
                                            </div>
                                             <asp:TextBox ID="AdminOption2" runat="server"></asp:TextBox>
                                           <%-- <input type="text" class="form-control" id="AdminOption2" runat="server" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="inputGroup-sizing-lg">
                                                    <input class="radio" type="radio" name="exampleRadios" id="" value="option3">
                                                    Option 3</span>
                                            </div>
                                             <asp:TextBox ID="AdminOption3" runat="server"></asp:TextBox>
                                           <%-- <input type="text" class="form-control" id="AdminOption3" runat="server" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="inputGroup-sizing-lg">
                                                    <input class="radio" type="radio" name="exampleRadios" id="" value="option4">
                                                    Option 4</span>
                                            </div>
                                             <asp:TextBox ID="AdminOption4" runat="server"></asp:TextBox>
                                           <%-- <input type="text" class="form-control" id="AdminOption4" runat="server" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">--%>
                                        </div>
                                        <div class="input-group input-group-lg">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text btn-primary" id="inputGroup-sizing-lg">
                                                    <input class="radio" type="radio" name="exampleRadios" value="answer">
                                                    Answer</span>
                                            </div>
                                            <asp:TextBox ID="AdminAnswer" runat="server"></asp:TextBox>
                                            <%--<input type="text" class="form-control" aria-label="Sizing example input" id="AdminAnswer" runat="server" aria-describedby="inputGroup-sizing-lg">--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <asp:Button ID="AddQuestionButton" runat="server" Text="Add" OnClick="AddQuestionButton_Click" />
                                </div>

                                <div class="col-md-2">
                                    <asp:Button ID="AdminDeleteButton" runat="server" Text="Delete" OnClick="AdminDeleteButton_Click" />
                                </div>
                                
                                <asp:Label ID="AdminUploadSuccessfulMessage" runat="server" ></asp:Label>

                                 <asp:Label ID="AdminUploadUnsuccessfulMessage" runat="server"></asp:Label>

                                <div class="col-md-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer footer-black  footer-white ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="credits ml-auto">
                            <span class="copyright">
                                ©Tavia Technologies
                            </span>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="Quiz/js/core/jquery.min.js"></script>
    <script src="Quiz/js/core/popper.min.js"></script>
    <script src="Quiz/js/core/bootstrap.min.js"></script>
    <script src="Quiz/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    <script src="Quiz/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="Quiz/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="Quiz/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="Quiz/demo/demo.js"></script>
</body>
</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">

</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >

</asp:Content>
