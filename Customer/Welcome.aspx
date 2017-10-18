<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Customer_Welcome" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron well">
				<h2>
               
					   <p class="auto-style1">
                           Welcome to Saudi Reservation <asp:Label id="lable1" runat="server" Text="Label"></asp:Label>
    </p>
				</h2>
			</div>
		</div>
	</div>
</div>
 

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>


