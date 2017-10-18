<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="PackageSearch.aspx.cs" Inherits="Customer_PackageSearch" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="jumbotron">
  

             <h1 class="text-center">
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT  [Flight_Number]
      ,[Source]
      ,[Destination]
      ,[Hotel_Name]
  FROM [airline].[dbo].[FHView] 
WHERE  ([Destination] LIKE '%' + @Destination + '%' AND [Source] LIKE '%' + @Source + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Destination" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="Source" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
	           
	             Packge Search</h1>
      <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
            
                     <table align="center" style="width: 50%">
                         <tr>
                             <td>From :</td>
                             <td>
                    <asp:TextBox ID="TextBox1" cssclass="form-control" placeholder="From..." runat="server" style="margin-bottom: 0" TextMode="Search"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>To :</td>
                             <td>
                    <asp:TextBox ID="TextBox2" cssclass="form-control" placeholder="To..." runat="server" TextMode="Search"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td>&nbsp;</td>
                             <td>
                    <asp:Button ID="Button1" cssclass="btn btn-default" runat="server" Text="SEARCH" OnClick="Button1_Click" />
                             </td>
                         </tr>
                     </table>

                     <br />
				</div>
				<div class="col-md-6">
				</div>
			</div>
		</div>
	</div>
</div>


        
    </div>
            <hr />
   
   
  
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
   
    <asp:UpdatePanel runat="server"> <ContentTemplate>
    <asp:GridView ID="GridView1" style="background:#e4e4e4" cssClass="table table-bordered table-hover " runat="server" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Flight_Number">
        <Columns>
            <asp:TemplateField HeaderText="Flight_Number" SortExpression="Flight_Number">
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
            <asp:TemplateField HeaderText="Hotel_Name" SortExpression="Hotel_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Hotel_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Hotel_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
       </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
   
   
  
    <br />
      
           
   
  
</asp:Content>

