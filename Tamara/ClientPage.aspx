<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientPage.aspx.cs" Inherits="Tamara.ClientPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/InformationPage.js" type="text/javascript"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>CMR Food Parcel Administrator</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: steelblue;">
        <a class="navbar-brand" href="#">CMR</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Clients <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container">
                <table style="float: left">
                    <tr>
                        <td>

                            <div class="clientText col col-lg-2">
                                <asp:Label class="regtext" runat="server" Text="ID Number:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextId" runat="server" OnTextChanged="TextBox_Id" />
                            </div>

                        </td>
                    </tr>

                    <tr>
                        <td>

                            <div class="clientText col col-lg-2">
                                <asp:Label class="regtext" runat="server" Text="Name:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextName" runat="server" OnTextChanged="TextBox_Name" />
                            </div>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <asp:Label class="regtext" runat="server" Text="Surname:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextSurname" runat="server" OnTextChanged="TextBox_Surname" />
                            </div>
                        </td>
                    </tr>


                    <tr>
                        <td>

                            <div class="clientText col col-lg-2">
                                <asp:Label class="regtext" runat="server" Text="Cell nr:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextCell" runat="server" OnTextChanged="TextBox_CellNr" />
                            </div>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <div class="clientText col col-lg-2">
                                <asp:Label class="regtext" runat="server" Text="Email:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextEmail" runat="server" OnTextChanged="TextBox_Email"/>
                            </div>
                        </td>

                    </tr>

                    <tr>
                        <td >
                            <div class="clientText col col-md-2">
                                <asp:Label class="regtext" runat="server" Text="Address:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextAddress" runat="server" OnTextChanged="TextBox_Address"/>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td></td>
                        <td>

                            <div class="row justify-content-md-left">
                                <asp:Button style="margin-left: 50px" type="button" ID="Button1" class="btn btn-success" runat="server" Text="Register new Client" OnClick="ButtonRegister_Click" />
                            </div>
                        </td>
                    </tr>

                </table>
                <table id="tableTwo">
                    <tr>
                        <td>
                            <div>
                                <asp:Label class="regtext" runat="server" Text="ID Number:" />
                            </div>
                        </td>
                        <td>
                            <div class="clientFields">
                                <asp:TextBox class="form-control clientBox" ID="TextBox1" runat="server" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div>
                                <asp:Button style="margin-left: 50px" type="button" class="btn btn-success" ID="Button2" runat="server" Text="Existing Client" OnClick="Button2_Click" />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>


