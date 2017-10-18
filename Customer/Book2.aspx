<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Book2.aspx.cs" Inherits="Customer_Book2" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [Flight] WHERE ([Flight_Number] = @Flight_Number)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Flight_Number" QueryStringField="Flight_Number" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
	  <div class="jumbotron">
    <asp:GridView ID="GridView1" cssclass="table table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" InsertVisible="False" ReadOnly="True" SortExpression="Flight_Number" />
            <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
            <asp:BoundField DataField="Hotel_ID" HeaderText="Hotel_ID" SortExpression="Hotel_ID" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
           
        </Columns>
    </asp:GridView>
          <br />
          <p class="auto-style1">
              Please print this Page and go to the Saudi Reservation office to payment </p>
          <p class="auto-style1">
              &nbsp;Your Ticket :
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </p>
           <asp:Button ID="Button1" cssclass="btn btn-default"  OnClientClick="javascript:window.print();" runat="server" Text="Print" />
          </div>
         
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
    </style>
</asp:Content>


