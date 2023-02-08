<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookAppointmentHomePage.aspx.cs" Inherits="project_for_Hospital.Appointment.bookAppointmentHomePage" %>

<!DOCTYPE html>

<head>
	<title>Book Appointment HomePage</title>
	<link href="../Images/ClassBookingImages/icon3.jpg" rel="icon"/>
    <link href="../Style/AppointmentStyle/burgerStyle.css" rel="stylesheet" />
    <link href="../Style/AppointmentStyle/style.css" rel="stylesheet" />
</head>

<body>
	
	<form runat="server">
		 	            <!-- checkbix-container -> checkbox-trigger -> menu-content -> hamburger-menu -->

    <span class="checkbox-container">
     <input class="checkbox-trigger" type="checkbox"  />
     <span class="menu-content">
         <ul>
           <asp:Image ID="Image1" runat="server" width="200px" ImageUrl="../Images/ClassBookingAImages/LOGO1.png" />
           <li><asp:Button ID="hmgbtn" runat="server" Text="HomePage" CssClass="btn9" OnClick="hmgbtn_Click"/></li>
			 <li><asp:Button ID="chatbot" runat="server" Text="ask me anything?" CssClass="btn9"/></li>
           <li><asp:Button ID="log_out" runat="server" Text="Log out" OnClick="log_out_Click"  CssClass="btn9"/></li>  
         </ul>
       <span class="hamburger-menu"></span>
     </span>
   </span>
   <!--End hamburger-menu -->
	<div class="container">
<br>
		<div class="h5div">
			<h5>book Appointment</h5>
		</div>
    <br>

    <br>
		<div class="container2">
			<div class="bookbutton">
                <asp:Button ID="bookingbtn" runat="server" Text="Booking appointment" CssClass="button button1" OnClick="bookingbtn_Click"/>
                <asp:Button ID="editbtn" runat="server" Text="Edit my appointment" CssClass="button button1" OnClick="editbtn_Click"/>
                <asp:Button ID="openbtn" runat="server" Text="Open File" CssClass="button button1" OnClick="openbtn_Click"/>
			</div>
		</div>
	</div>
		</form>
</body>
