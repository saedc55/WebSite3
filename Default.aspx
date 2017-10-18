<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <header  class="jumbotron">
      
      <h2 style="font-size: 40pt">
          Saudi Reservation</h2>
       
        <br />


  
       
  
                 
       
         </header>
      <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Promo.xml"></asp:XmlDataSource>
           
        <asp:GridView ID="GridView1" cssClass="table table-bordered table-striped table-hover "  runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Width="100%">
            <Columns>
                <asp:BoundField DataField="offername" HeaderText="Offers" SortExpression="offername" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            </Columns>
        </asp:GridView>
</asp:Content>
