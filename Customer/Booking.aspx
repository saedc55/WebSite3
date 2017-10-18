<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Customer_Booking" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">

        <h1 style="text-align:center;">Flight Booking</h1>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" DeleteCommand="DELETE FROM [Flight] WHERE [Flight_Number] = @Flight_Number" InsertCommand="INSERT INTO [Flight] ([Source], [Destination], [Hotel_ID]) VALUES (@Source, @Destination, @Hotel_ID)" SelectCommand="SELECT * FROM [Flight]" UpdateCommand="UPDATE [Flight] SET [Source] = @Source, [Destination] = @Destination, [Hotel_ID] = @Hotel_ID WHERE [Flight_Number] = @Flight_Number">
            <DeleteParameters>
                <asp:Parameter Name="Flight_Number" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />
                <asp:Parameter Name="Hotel_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />
                <asp:Parameter Name="Hotel_ID" Type="Int32" />
                <asp:Parameter Name="Flight_Number" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [FHView]"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" style="background:#e4e4e4" CssClass="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource1" Width="100%" PageSize="5">
            <Columns>
                <asp:TemplateField HeaderText="Booking">
                    <ItemTemplate>
<asp:Button runat="server" cssclass="btn btn-default" onclick="click" Text="Book"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Flight Number" InsertVisible="False" SortExpression="Flight_Number">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Flight_Number") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Flight_Number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Source" SortExpression="Source">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Source") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Source") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Destination" SortExpression="Destination">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Destination") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Destination") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                

            </Columns>
          <PagerStyle CssClass="pagination-ys" />
        </asp:GridView>
        <br />
        <br />
        
       
    <br />
      
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    </asp:Content>


