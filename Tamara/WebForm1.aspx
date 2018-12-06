﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Tamara.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="EmpId" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:BoundColumn HeaderText="EmpId" DataField="EmpId"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="F_Name" DataField="F_Name"></asp:BoundColumn>
                    <asp:BoundColumn HeaderText="L_Name" DataField="L_Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="City" HeaderText="City"></asp:BoundColumn>
                    <asp:BoundColumn DataField="EmailId" HeaderText="EmailId"></asp:BoundColumn>
                    <asp:BoundColumn DataField="EmpJoining" HeaderText="EmpJoining"></asp:BoundColumn>
                    <asp:EditCommandColumn EditText="Edit" CancelText="Cancel" UpdateText="Update" HeaderText="Edit"></asp:EditCommandColumn>
                    <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete"></asp:ButtonColumn>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />
                <AlternatingItemStyle BackColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
