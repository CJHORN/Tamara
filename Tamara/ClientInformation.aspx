<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientInformation.aspx.cs" Inherits="Tamara.ClientInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="Scripts/InformationPage.js" type="text/javascript"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>CMR Food Parcel Administrator</title>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
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

                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

            </div>
        </nav>


        <div class="container">
            <h2>Client Information</h2>
            <table class="table table-hover">
                <thead>
                    <tr id="ClientTable">
                        <th>ID Number</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Cell nr</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Parcel Date last Received</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="clientTableInfo">
                        <td>9005125034082</td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>0725424196</td>
                        <td>cjhorn4@googlemail.com</td>
                        <td>7 Akasia Street Zonderwater 1000</td>
                        <td runat="server" id="date"></td>
                        <td>
                            <asp:Button Style="margin-left: 50px" type="button" class="btn btn-success" ID="SupplyButton1" runat="server" Text="Supply Parcel" UseSubmitBehavior="true" OnClick="SupplyParcelButton" />
                        </td>

                    </tr>

                    <tr class="clientTableInfo">
                        <td runat="server" id="idTxt" textbox="text_Id"></td>
                        <td runat="server" id="nameTxt"></td>
                        <td runat="server" id="surnameTxt"></td>
                        <td runat="server" id="cellTxt"></td>
                        <td runat="server" id="emailTxt"></td>
                        <td runat="server" id="addressTxt"></td>
                        <td runat="server" id="dateTxt"></td>
                        <td>
                            <asp:Button Style="margin-left: 50px" type="button" class="btn btn-success" ID="SupplyButton2" runat="server" Text="Supply Parcel" UseSubmitBehavior="true" OnClick="SupplyParcelButtonTwo" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </form>
</body>
</html>
