<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="HotelSearch.aspx.cs" Inherits="Customer_HotelSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="jumbotron">


             <h1>Hotel Search</h1>
      <div class="container-fluid">
	
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT [Hotel_Loaction], [Hotel_Name] FROM [Hotil_List] WHERE ([Hotel_Loaction] LIKE '%' + @Hotel_Loaction + '%')">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="TextBox" Name="Hotel_Loaction" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                        <div class="form-inline">

                    <div class="form-group">
                        
                                 <asp:TextBox ID="TextBox" cssclass="form-control" placeholder="Search for..." runat="server" TextMode="Search"></asp:TextBox>
                    
                            </div>
                      <div class="form-group">
                    <asp:Button ID="Button2" cssclass="btn btn-default" runat="server" Text="SEARCH" OnClick="Button1_Click" />
                       </div>
                            </div>
                     <br />
				</div>
				
		


        
    </div>
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel runat="server">   <ContentTemplate>
    <asp:GridView ID="GridView1"  style="background:#e4e4e4" CssClass="table table-bordered table-hover" runat="server" Width="100%" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Hotel_Loaction" HeaderText="Hotel Loaction" SortExpression="Hotel_Loaction" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" SortExpression="Hotel_Name" />
        </Columns>
    </asp:GridView></ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
        </Triggers>
        </asp:UpdatePanel>
    <br />
</asp:Content>

