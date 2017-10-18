<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Flight.aspx.cs" Inherits="Customer_Flight" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>    body{
                background: linear-gradient( #D9D9D9,#ffffff,#ffffff);
           }
           html{
               background-color:#ffffff;
           }
           .jumbotron{
                box-shadow: 0px 10px 50px #d0d0d0;
           }</style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [FHView] WHERE ([Flight_Number] = @Flight_Number)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Flight_Number" QueryStringField="Flight_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
	  <div style="padding: 22px;  border-radius: 10px; background-color: #EFEFEF; width: 100%;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" ReadOnly="True" SortExpression="Flight_Number" />
            <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel_Name" SortExpression="Hotel_Name" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</div>
</asp:Content>

