<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemanage.aspx.cs" Inherits="Customer_Sitemanage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [FHView]"></asp:SqlDataSource>
    <p class="auto-style2">
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" DeleteCommand="DELETE FROM [Hotil_List] WHERE [Hotel_ID] = @Hotel_ID" InsertCommand="INSERT INTO [Hotil_List] ([Hotel_Loaction], [Hotel_Name]) VALUES (@Hotel_Loaction, @Hotel_Name)" SelectCommand="SELECT * FROM [Hotil_List]" UpdateCommand="UPDATE [Hotil_List] SET [Hotel_Loaction] = @Hotel_Loaction, [Hotel_Name] = @Hotel_Name WHERE [Hotel_ID] = @Hotel_ID">
            <deleteparameters>
                <asp:Parameter Name="Hotel_ID" Type="Int32" />
            </deleteparameters>
            <insertparameters>
                <asp:ControlParameter ControlID="TextBox5" Name="Hotel_Loaction" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="Hotel_Name" PropertyName="Text" Type="String" />
            </insertparameters>
            <updateparameters>
                <asp:Parameter Name="Hotel_Loaction" Type="String" />
                <asp:Parameter Name="Hotel_Name" Type="String" />
                <asp:Parameter Name="Hotel_ID" Type="Int32" />
            </updateparameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" DeleteCommand="DELETE FROM [Flight] WHERE [Flight_Number] = @Flight_Number" InsertCommand="INSERT INTO [Flight] ([Destination], [Source], [Time]) VALUES (@Destination, @Source, @Time)" SelectCommand="SELECT * FROM [Flight]" UpdateCommand="UPDATE [Flight] SET [Destination] = @Destination, [Source] = @Source WHERE [Flight_Number] = @Flight_Number">
            <deleteparameters>
            <asp:Parameter Name="Flight_Number" Type="Int32" />
        </deleteparameters>
            <insertparameters>
            <asp:ControlParameter ControlID="TextBox2" Name="Destination" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="Source" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Time" PropertyName="Text" />
        </insertparameters>
            <updateparameters>
            <asp:Parameter Name="Destination" Type="String" />
            <asp:Parameter Name="Source" Type="String" />
            <asp:Parameter Name="Flight_Number" Type="Int32" />
        </updateparameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        Flight
    </p>
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn btn-default" />
            </td>
            <td>
                <asp:TextBox ID="TextBox2" placeholder="Destination" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" placeholder="Source" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Time" CssClass="form-control" type="date"></asp:TextBox></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <hr />
    <div style="width: 100%; height: 400px; overflow: scroll">
    <asp:GridView id="GridView5" cssclass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True">
        <columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" SortExpression="Flight_Number" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
            <asp:BoundField DataField="Hotel_ID" HeaderText="Hotel_ID" SortExpression="Hotel_ID" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
        </columns>
        <pagerstyle cssclass="pagination-ys" />
    </asp:GridView>
        </div>
    <p class="auto-style2">
        &nbsp;
    </p>
    <p class="auto-style2">
        Hotel
    </p>
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button1_Click1" CssClass="btn btn-default" />
            </td>
            <td>
                <asp:TextBox ID="TextBox5" placeholder="Destination" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" placeholder="Source" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <br />
    <hr />
    <asp:GridView cssclass="table table-striped" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="Hotel_ID" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True">
        <columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Hotel_ID" HeaderText="Hotel_ID" ReadOnly="True" SortExpression="Hotel_ID" />
            <asp:BoundField DataField="Hotel_Loaction" HeaderText="Hotel_Loaction" SortExpression="Hotel_Loaction" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel_Name" SortExpression="Hotel_Name" />
        </columns>
        <pagerstyle cssclass="pagination-ys" />
    </asp:GridView>
    <p class="auto-style1">
        &nbsp;
    </p>
    <p class="auto-style2">
        Packge
    </p>
    <br />
    <hr />
    <asp:GridView cssclass="table table-striped" runat="server" AllowSorting="True" AutoGenerateColumns="False" Width="100%" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource3">
        <columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" ReadOnly="True" SortExpression="Flight_Number" />
            <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
            <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel_Name" SortExpression="Hotel_Name" />
        </columns>
        <pagerstyle cssclass="pagination-ys" />
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }

        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }

        .pagination-ys {
            /*display: inline-block;*/
            padding-left: 0;
            margin: 20px 0;
            border-radius: 4px;
        }

            .pagination-ys table > tbody > tr > td {
                display: inline;
            }

                .pagination-ys table > tbody > tr > td > a,
                .pagination-ys table > tbody > tr > td > span {
                    position: relative;
                    float: left;
                    padding: 8px 12px;
                    line-height: 1.42857143;
                    text-decoration: none;
                    color: #dd4814;
                    background-color: #ffffff;
                    border: 1px solid #dddddd;
                    margin-left: -1px;
                }

                .pagination-ys table > tbody > tr > td > span {
                    position: relative;
                    float: left;
                    padding: 8px 12px;
                    line-height: 1.42857143;
                    text-decoration: none;
                    margin-left: -1px;
                    z-index: 2;
                    color: #aea79f;
                    background-color: #f5f5f5;
                    border-color: #dddddd;
                    cursor: default;
                }

                .pagination-ys table > tbody > tr > td:first-child > a,
                .pagination-ys table > tbody > tr > td:first-child > span {
                    margin-left: 0;
                    border-bottom-left-radius: 4px;
                    border-top-left-radius: 4px;
                }

                .pagination-ys table > tbody > tr > td:last-child > a,
                .pagination-ys table > tbody > tr > td:last-child > span {
                    border-bottom-right-radius: 4px;
                    border-top-right-radius: 4px;
                }

                .pagination-ys table > tbody > tr > td > a:hover,
                .pagination-ys table > tbody > tr > td > span:hover,
                .pagination-ys table > tbody > tr > td > a:focus,
                .pagination-ys table > tbody > tr > td > span:focus {
                    color: #97310e;
                    background-color: #eeeeee;
                    border-color: #dddddd;
                }
    </style>
</asp:Content>


