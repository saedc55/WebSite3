<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:airlineConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [Email_ID] = @Email_ID" InsertCommand="INSERT INTO [User] (Email_ID, Password, Name) VALUES (@Email_ID, @Password, @Name)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Password] = @Password, [Name] = @Name, [User_ID] = @User_ID WHERE [Email_ID] = @Email_ID">
        <DeleteParameters>
            <asp:Parameter Name="Email_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Emailtext" Name="Email_ID" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Pastext" Name="Password" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Nametext" Name="Name" PropertyName="Text" />
        </InsertParameters>
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
 
  <h2 style="text-align:center;">Register</h2>
    <hr />
    <div class="form-group">
      <label for="Emailtext">Email :</label>
        <asp:TextBox ID="Emailtext" CssClass="form-control" runat="server" TextMode="Email"  placeholder="Enter email"></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Emailtext" ErrorMessage="Email Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
     
    </div>
    <div class="form-group">
      <label for="Pastext">Password :</label>
         <asp:TextBox ID="Pastext" CssClass="form-control"  runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Pastext" ErrorMessage="Password Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
     
    </div>
   <div class="form-group">
      <label for="Pastext0"> Confirm Password :</label>
         <asp:TextBox ID="Pastext0" CssClass="form-control"  runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Pastext0" ErrorMessage="Confirm Password Field Required" ForeColor="Red">

        </asp:RequiredFieldValidator>
      <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Pastext" ControlToValidate="Pastext0" ErrorMessage="The password does not match" ForeColor="Red"></asp:CompareValidator>
    </div>
        <div class="form-group">
      <label for="Nametext">User name :</label>
        <asp:TextBox ID="Nametext" CssClass="form-control" runat="server"  placeholder="Enter email"></asp:TextBox>
     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Nametext" ErrorMessage="User name Field Required" ForeColor="Red"></asp:RequiredFieldValidator>
     
    </div>
 <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" OnClick="Button1_Click" Text="Sign Up" />
         <a href="Login.aspx">You Have Accont ?</a>
        <br />
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>

</div>
  

    
         
</asp:Content>

