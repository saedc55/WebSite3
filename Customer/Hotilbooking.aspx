<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Hotilbooking.aspx.cs" Inherits="Customer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">

        <h1 style="text-align:center;">Hotel Booking</h1>

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [Hotil_List]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" style="background:#e4e4e4" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="Hotel_ID" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" cssclass="btn btn-default" onclick="click2" Text="Book" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hotel ID" InsertVisible="False" SortExpression="Hotel_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Hotel_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Hotel_ID") %>'></asp:Label>
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
</asp:Content>

