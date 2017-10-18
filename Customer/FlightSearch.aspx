<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="FlightSearch.aspx.cs" Inherits="Customer_FlightSearch" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">
      

             <h1> Flight Search</h1>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT Flight_Number, Source, Destination, Time FROM Flight WHERE (Destination LIKE '%' + @Destination + '%') AND (Source LIKE '%' + @Source + '%')" DeleteCommand="DELETE FROM [Flight] WHERE [Flight_Number] = @Flight_Number" InsertCommand="INSERT INTO [Flight] ([Source], [Destination]) VALUES (@Source, @Destination)" UpdateCommand="UPDATE [Flight] SET [Source] = @Source, [Destination] = @Destination WHERE [Flight_Number] = @Flight_Number">
                     <DeleteParameters>
                         <asp:Parameter Name="Flight_Number" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="Source" Type="String" />
                         <asp:Parameter Name="Destination" Type="String" />
                     </InsertParameters>
                     <SelectParameters>
                         <asp:ControlParameter ControlID="searchtext2" Name="Destination" PropertyName="Text" />
                         <asp:ControlParameter ControlID="searchtext1" Name="Source" PropertyName="Text" />
                     </SelectParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="Source" Type="String" />
                         <asp:Parameter Name="Destination" Type="String" />
                         <asp:Parameter Name="Flight_Number" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                
      <div class="container-fluid">

            <div class="form-inline">
                     <div class="form-group">
                         <label for="searchtext1">From :</label>
                                 <asp:TextBox ID="searchtext1" autocomplete="on" cssclass="form-control" runat="server" placeholder="Search for..." TextMode="Search" ></asp:TextBox>
                    
                       </div>
                                 <div class="form-group">
                                     <label for="searchtext2">To :</label>
                                 <asp:TextBox ID="searchtext2" autocomplete="on" cssclass="form-control" runat="server" placeholder="Search for..." TextMode="Search"></asp:TextBox>
                    </div>
                        
                                 <div class="form-group">
                    <asp:Button ID="search" cssclass="btn btn-default" runat="server" Text="SEARCH" OnClick="search_Click"  />
                          
                    </div>
                </div>
                     <br />
				</div>
				<div class="col-md-6">
                
				</div>
			


        
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>


        
    </div>

    <hr />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
 
    <asp:GridView ID="GridView1" style="background:#e4e4e4" cssClass="table table-bordered table-hover " runat="server" AutoGenerateColumns="False" DataKeyNames="Flight_Number" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
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
            <asp:TemplateField HeaderText="Time" SortExpression="Time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        <br />
   
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="search" EventName="Click" />
        </Triggers>
        </asp:UpdatePanel>
    <br />
</asp:Content>

