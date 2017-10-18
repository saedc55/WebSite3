<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" SelectCommand="SELECT * FROM [User] WHERE [Email_ID] = @Email_ID AND [Password] = @Password" DeleteCommand="DELETE FROM [User] WHERE [Email_ID] = @Email_ID" InsertCommand="INSERT INTO [User] ([Email_ID], [Password], [Name], [User_ID]) VALUES (@Email_ID, @Password, @Name, @User_ID)" UpdateCommand="UPDATE [User] SET [Password] = @Password, [Name] = @Name, [User_ID] = @User_ID WHERE [Email_ID] = @Email_ID">
        <DeleteParameters>
            <asp:Parameter Name="Email_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email_ID" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="User_ID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Email_ID" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="Password" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="User_ID" Type="Int32" />
            <asp:Parameter Name="Email_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


   <style>
       .con{
    width: 300px;
    margin: 0 auto;
    margin-top:20px;
    padding: 30px;
    border: 0px;
    background: #ececec;
    box-shadow:0px 1px 1px #cecece;
    border-radius: 5px;
    background:#ffffff;

       }

   </style>
  
<div class="con">
 
  <h2 style="text-align:center;">Login</h2>
    <hr />
    <div class="form-group">
      <label for="TextBox1">Email:</label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Email"  placeholder="Enter email" autofocus></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
     
    </div>
    <div class="form-group">
      <label for="TextBox2">Password:</label>
         <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
     
    </div>
   
     <asp:Button ID="Button2" cssclass="btn btn-default"  runat="server" OnClick="Button1_Click" Text="Login" />


    <br />

    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
  

</div>
     
    <br />
    </asp:Content>

