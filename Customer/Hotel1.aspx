<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Hotel1.aspx.cs" Inherits="Customer_Hotel1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [Hotil_List] WHERE ([Hotel_ID] = @Hotel_ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Hotel_ID" QueryStringField="Hotel_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  <div id="printableArea">
	  <div class="jumbotron">
    <asp:GridView ID="GridView1" cssclass="table table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="Hotel_ID" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
          
            <asp:TemplateField HeaderText="Hotel ID" InsertVisible="False" SortExpression="Hotel_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Hotel_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Hotel_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hotel Loaction" SortExpression="Hotel_Loaction">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hotel_Loaction") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Hotel_Loaction") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hotel Name" SortExpression="Hotel_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hotel_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Hotel_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
           <br />
          <p class="auto-style2">
              Please print this Page and go to the Saudi Reservation office to payment </p>
          <p class="auto-style2">
              Your Reservation Number :
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              &nbsp;</p>
           <asp:Button ID="Button1" cssclass="btn btn-default"  OnClientClick="javascript:window.print();" runat="server" Text="Print" />
</div>
      </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            font-size: large;
            text-align: center;
        }
        .Button1{
margin:0

        }
    </style>
  
</asp:Content>


