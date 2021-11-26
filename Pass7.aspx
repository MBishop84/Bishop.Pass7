<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Pass7.aspx.vb" Inherits="Pass7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSCI 4650 Bishop Programming Assignment 7</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <asp:Table ID="Table1" runat="server" Width="100%" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <img src="imgs/NicePng_smoke-vector-png_2126238.png" style="width: 100px" />
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <h1>Bishop - Assignment 7</h1>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                         <img src="imgs/NicePng_smoke-vector-png_2126238.png" style="width: 100px" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </header>
        <main>
            <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Label ID="Label1" runat="server" Text="Choose Supplier: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CompanyName" DataValueField="SupplierID" AutoPostBack="True"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:FormView ID="FormView1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" DataSourceID="SqlDataSource2" HorizontalAlign="Center" CellSpacing="5" CssClass="view" ForeColor="Black" GridLines="Both" BackImageUrl="~/imgs/smoke.gif">
                <EditItemTemplate>
                    CompanyName:
                    <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                    <br />
                    ContactName:
                    <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                    <br />
                    ContactTitle:
                    <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Region:
                    <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                    <br />
                    PostalCode:
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    HomePage:
                    <asp:TextBox ID="HomePageTextBox" runat="server" Text='<%# Bind("HomePage") %>' />
                    <br />
                    Fax:
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    CompanyName:
                    <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                    <br />
                    ContactName:
                    <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                    <br />
                    ContactTitle:
                    <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Region:
                    <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                    <br />
                    PostalCode:
                    <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    HomePage:
                    <asp:TextBox ID="HomePageTextBox" runat="server" Text='<%# Bind("HomePage") %>' />
                    <br />
                    Fax:
                    <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CompanyName:
                    <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>' />
                    <br />
                    ContactName:
                    <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>' />
                    <br />
                    ContactTitle:
                    <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Bind("ContactTitle") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Region:
                    <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
                    <br />
                    PostalCode:
                    <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <br />
                    HomePage:
                    <asp:Label ID="HomePageLabel" runat="server" Text='<%# Bind("HomePage") %>' />
                    <br />
                    Fax:
                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                    <br />
                    Phone:
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Country:
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                </ItemTemplate>
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:FormView>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CellPadding="10" GridLines="Vertical" HorizontalAlign="Center" CssClass="view" ForeColor="Black" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName"></asp:BoundField>
                    <asp:BoundField DataField="Count" HeaderText="Count" ReadOnly="True" SortExpression="Count">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:Northwind2ConnectionString %>' SelectCommand="SELECT Categories.CategoryName, COUNT(Products.CategoryID) AS Count FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID WHERE (Suppliers.SupplierID = @SupplierID) GROUP BY Suppliers.SupplierID, Categories.CategoryName ORDER BY Categories.CategoryName">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" DefaultValue="1" Name="SupplierID"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </main>
        <footer>
        </footer>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Northwind2ConnectionString %>" SelectCommand="SELECT [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [HomePage], [Fax], [Phone], [Country] FROM [Suppliers] WHERE ([SupplierID] = @SupplierID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="SupplierID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Northwind2ConnectionString %>" SelectCommand="SELECT [SupplierID], [CompanyName] FROM [Suppliers] ORDER BY [CompanyName]"></asp:SqlDataSource>
    </form>
</body>
</html>
