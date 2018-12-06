<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tamara.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="StyleSheet.css" rel="stylesheet"/>
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
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"/>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

    <form id="form1" runat="server">
        <div>
            <h3 id="LoginQuestion">Please login to your account:</h3>
            <div id="loginBoxStyle">
              <h2>Username</h2>
              <asp:TextBox id="username" type="text" name="username" value="" runat="server"></asp:TextBox>
              <h2>Password</h2>
             <asp:TextBox id="password" type="text" name="password" value="" runat="server"></asp:TextBox>
            </div>
            <div id="loginButton"><asp:Button  type="button" class="btn btn-primary" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></div>
        </div>
    </form>
</body>
</html>
<asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" OnSelecting="Unnamed1_Selecting" SelectCommand="SELECT * FROM [LoginDetails]"></asp:sqldatasource>
<asp:sqldatasource runat="server"></asp:sqldatasource>
