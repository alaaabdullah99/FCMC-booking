	<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="project_for_Hospital.Appointment.LoginPage" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title> Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../Images/ClassBookingImages/icon3.jpg" rel="icon"/>
<link href="../Style/LoginPageStyle/bootstrap.min.css" rel="stylesheet" />
<link href="../Style/LoginPageStyle/styles.css" rel="stylesheet" />


	</head>
	<body class="loginbg">

	<!-- Preloader -->
	<div class="loader">
	  <div class="container login">
	   <div class="cp-wrapper">
			<div class="cp-spinner-block">
				<div class="cp-spinner cp-flip"></div>
				<span>IAU E-Services Portal</span>
			</div>
		</div>
	  </div>
	</div>
		<%--hhh--%>
	<!-- login -->
	<div class="container login">
		<div class="col-md-8 loginpanel">
			  <div class="col-md-1 loginspace">
					<a data-placement="left" data-toggle="tooltip" href="#" title="Facebook"><img src="../Images/LoginPageImages/fb.png" class="loginsocial"/></a>
					<a data-placement="left" data-toggle="tooltip" href="#" title="Twitter"><img src="../Images/LoginPageImages/twitter.png" class="loginsocial"/></a>
					<a data-placement="left" data-toggle="tooltip" href="#" title="Youtube"><img src="../Images/LoginPageImages/youtube.png" class="loginsocial"/></a>
					<a data-placement="left" data-toggle="tooltip" href="#" title="Google+"><img src="../Images/LoginPageImages/google.png" class="loginsocial"/></a>
			  </div>
			  <div class="col-md-5 loginblue">

					<img src="../Images/LoginPageImages/iau_logo.png" class="img-responsive"/>
					 <br>
			  </div>
			  <div class="col-md-6 spaceform">
					<form class="movelogin" runat="server">
					  <div class="group">
						<asp:TextBox ID="Idfield" runat="server" class="input userimg" type="text" placeholder="User Name"></asp:TextBox><span class="highlight"></span><span class="bar"></span>
					  </div>
					  <div class="group">
						 <asp:TextBox ID="Passfield" runat="server" class="input passwordimg" type="password" Placeholder="Password"></asp:TextBox><span class="highlight"></span><span class="bar"></span>
					  </div>

					  <div class="round">
						<asp:CheckBox ID="CheckBox1" runat="server" />
						<label for="checkbox"></label> <span class="spaceleft">Remember Me</span>
					  </div>

									<div style="text-align:center">
					<asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator1" ForeColor="Red" ErrorMessage="" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>  
			</div>
                        

						<asp:Button ID="booking" runat="server" class="btn btn-blue" Text="Login" OnClick="booking_Click"/>
					  <%--<button type="button" onclick="window.location.href='login_ar.html'" class="btn btn-green arfont">عربي</button>--%>
					  <br/><br/>
					  <a href="#">Forgot Password ?</a><br/>
					  <a href="#">Change Password</a><br/>
					  <a href="#">Ask for Help</a>
					</form>
			  </div>
		</div>
	</div>
	</body>
	<!-- login -->

	<!-- script references -->
		<script src="../js/jquery.min.js"></script>

		<script src="../js/customscript.js"></script>
	<!-- script references -->

</html>
