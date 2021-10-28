<%@ Page Title="Home" Language="C#" MasterPageFile="~/Example1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="banner"></div>
<div id="page" class="container">
	<div class="boxA">
		<h2>Our Team</h2>
		<div class="box">
			<a href="About.aspx" class="image image-full"><img src="images/esop1-edit.jpg" alt="" /></a>
			<span>Meet The Green Team</span>
		</div>
		<p>Our team of
ecological analysts, climatologists, project managers, and environmental lawyers will be dispatched to
review operations for a business and will create a report that determines what a business does well</p>
		<a href="About.aspx" class="button">Learn More</a>
	</div>

	<div class="boxB">
		<h2>Our Goal</h2>
		<div class="box">
			<a href="About.aspx" class="image image-full"><img src="images/greenbusiness.jpg" alt="" /></a>
			<span>What Do We Do?</span>
		</div>
		<p>Our mission is as simple as it is audacious; we seek to eventually become one of the foremost ecological consulting firms, eventually becoming a part of the greater global discourse on ecology the protection of the environment.</p>
		<a href="About.aspx" class="button">Learn More</a>
	</div>
    

	<div class="boxC">
		<h2>Make Donations</h2>
		<div class="box">
			<a href="shoppingcart.aspx" class="image image-full"><img src="images/money.jpg" alt="" /></a>
			<span>Support The Cause</span>
		</div>
		<p>With your help we can dramatically reduce our carbon footprint by making businesses be more "green", and improve the lives of those who currently live on the planet, as well as the generations that will succeed us.</p>
		<a href="shoppingcart.aspx" class="button">Learn More</a>
	</div>


    </div>
</asp:Content>
