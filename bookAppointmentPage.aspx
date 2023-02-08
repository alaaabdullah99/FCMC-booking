<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookAppointmentPage.aspx.cs" Inherits="project_for_Hospital.Appointment.bookAppointmentPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="../Images/ClassBookingImages/icon3.jpg" rel="icon"/>
    <link href="../Style/AppointmentStyle/class-addRoom-Style.css" rel="stylesheet" />
    <link href="../Style/AppointmentStyle/burgerStyle.css" rel="stylesheet" />
  <title>Book Appointment</title>
</head>
<body>
	
	            
  <div class="container">
    <div class="title">New Appointment</div>
    <div class="content">
      <form action="#" runat="server">
          <!-- checkbix-container -> checkbox-trigger -> menu-content -> hamburger-menu -->

    <span class="checkbox-container">
     <input class="checkbox-trigger" type="checkbox"  />
     <span class="menu-content">
         <ul>
           <asp:Image ID="Image1" runat="server" width="200px" ImageUrl="../Images/ClassBookingAImages/LOGO1.png" />
           <li><asp:Button ID="hmgbtn" runat="server" Text="HomePage" CssClass="btn9" OnClick="hmgbtn_Click"/></li>
			 <li><asp:Button ID="chatbot" runat="server" Text="Ask Me Anything?" CssClass="btn9"/></li>
           <li><asp:Button ID="log_out" runat="server" Text="Log out" OnClick="log_out_Click"  CssClass="btn9"/></li>  
         </ul>
       <span class="hamburger-menu"></span>
     </span>
   </span>
   <!--End hamburger-menu -->

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_projectConnectionString %>" SelectCommand="SELECT * FROM [Doctor_info] WHERE [Doctor_ID] != 6"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_projectConnectionString %>" SelectCommand="SELECT * FROM [Clinic_info] WHERE [Virtual/Attend_clinic] = @type">
              <SelectParameters>
                  <asp:Parameter Name="type" />
              </SelectParameters>
          </asp:SqlDataSource>
        <div class="user-details">

          <div class="input-box">
            <span class="details">Name </span>
              <asp:TextBox ID="nametext" runat="server" Enabled="false" placeholder="Name "></asp:TextBox>
          </div>

          <div class="input-box">
            <span class="details">National ID/Iqama ID </span>
              <asp:TextBox ID="idtext" runat="server" Enabled="false" placeholder="ID "></asp:TextBox>
          </div>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
    ControlToValidate="idtext" runat="server"
    ErrorMessage="Only Numbers allowed"
    ValidationExpression="\d+">
</asp:RegularExpressionValidator>--%>

					<div class="input-box">
            <span class="details">Phone number </span>
              <asp:TextBox ID="TextBox1" runat="server" Enabled="false" placeholder="Phone "></asp:TextBox>
          </div>
<%--            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
    ControlToValidate="TextBox1" runat="server"
    ErrorMessage="Only Numbers allowed"
    ValidationExpression="\d+">
</asp:RegularExpressionValidator>--%>

            	<div class="input-box">
            <span class="details">Email </span>
              <asp:TextBox ID="emailtext" runat="server" Enabled="false" placeholder="Email "></asp:TextBox>
          </div>


</div>

						
						   <label class="clinicradio" style="text-align:center">
                               <asp:RadioButton ID="R1" GroupName="f" runat="server" class="Vclinic" checked="true" name="CR" OnCheckedChanged="R1_CheckedChanged" AutoPostBack="True" />
							<span class="checkmark"></span>
							Virtual Clinic
						   </label>

						   <label class="clinicradio">
                            <asp:RadioButton ID="R2" GroupName="f" runat="server" class="Aclinic" name="CR" OnCheckedChanged="R2_CheckedChanged" AutoPostBack="True"/>
							<span class="checkmark"></span>
							Attend Clinic
						   </label>
						

  <div class="user-details">
					<div class="input-box">
						<span class="details">Clinic</span>
						<!--choose room type-->
                        <asp:DropDownList ID="clinicsList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Clinic_name" DataValueField="Clinic_ID" OnSelectedIndexChanged="clinicsList_SelectedIndexChanged">
                        </asp:DropDownList>
					</div>


					<div class="input-box">
						<span class="details">Doctor</span>
						<!--choose room type-->
                        <asp:DropDownList ID="doctorList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Doctor_name" DataValueField="Doctor_ID" AutoPostBack="True" AppendDataBoundItems="True">
                        </asp:DropDownList>
					</div>

					          <div class="input-box">
					            <span class="details">Date </span>
                                  <asp:TextBox ID="datetext" runat="server" TextMode="Date"></asp:TextBox>
                                  <%--<asp:RequiredFieldValidator ID="RV1" runat="server" ErrorMessage="RequiredField" ControlToValidate="datetext" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                  <asp:Label ID="error" runat="server" Text="" ForeColor="Red" Style="text-align:center"></asp:Label>
					          </div>

										<div class="input-box">
											<span class="details">Time</span>
											<!--choose room type-->
                                            <asp:DropDownList ID="timelist" runat="server">
                                                <asp:ListItem Value="0">Morning</asp:ListItem>
                                                <asp:ListItem Value="1">Evening</asp:ListItem>
                                            </asp:DropDownList>
										</div>
      <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
      </div>
        <div class="button">
            <asp:Button ID="subbtn" runat="server" Text="Submit" OnClick="subbtn_Click"/>
       </div>
         <div class="button">
             <asp:Button ID="cnbtn" runat="server" Text="cancel" OnClick="cnbtn_Click"/>
        </div>
      </form>
			</div>

  </div>

</body>
</html>

