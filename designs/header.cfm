<!--- 
Theme: 	Planet
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from head.cfm after the call to init.cfm.
--->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
			<cfoutput>
				<title>Planet | <cfif isHomepage>Home<cfelse>#attributes.pagetitle#
				</cfif></title>
				#getMetaTags()#
			</cfoutput>
		
		<cfoutput>
		 <link rel="stylesheet" href="../_data/#vnodefolder#/styles/main.css" type="text/css" media="screen" />
		 
		 <cfif isHomepage>
		 <link rel="stylesheet" href="../_data/#vnodefolder#/styles/home.css" type="text/css" media="screen" />
		 </cfif>
		</cfoutput>
		
		<cfif isHomepage>
		 <style type="text/css">
		  a.Home { background-color: #ece5c7; }
		 </style>
		</cfif>
		
		<!--[if IE 6]>
			<style type="text/css" media="screen">
				#mainContent #support {width: 497px;}
				#memberLogin form {width: 256px;}
			</style>
		<![endif]-->
		<!--[if IE 7]>
			<style type="text/css" media="screen">
				#memberLogin form {width: 256px;}
				ul#nav li:hover ul {top: 26px;}
				ul#nav ul li {width: 160px; margin-top: -4px;}
			</style>
		<![endif]-->
		
	</head>
	<body >
		<div id="container">
			<div id="header">
				<a id="logo" href="/index.cfm?&amp;nodeid=9" title="CitySoft | Planet"> </a>				
			</div><!-- #header -->
			<div id="socialmedia">
			 <p>Follow Us.</p>
			 <div>
			 <cfoutput>
			  <a href=""><img src="/_data/#vNodeFolder#/images/facebook.png" alt="Facebook" /></a>
			  <a href=""><img src="/_data/#vNodeFolder#/images/twitter.png" alt="Twitter" /></a>
			  <a href=""><img src="/_data/#vNodeFolder#/images/pinterest.png" alt="Pinterest" /></a>
			  <a href=""><img src="/_data/#vNodeFolder#/images/googleplus.png" alt="Google Plus" /></a>
			  <a href=""><img src="/_data/#vNodeFolder#/images/youtube.png" alt="YouTube" /></a>
			 </cfoutput>
			 </div>
			</div><!-- #socialmedia-->			
			<!--- Menus --->
			<ul id="nav">
					<cfif not isDefined("client.userID") or client.userId lte 0>
						<cfset topmenu_show="public">
                    <cfelse>
						<cfset topmenu_show="roleid">
					</cfif>
					<li><a href="/index.cfm?&nodeid=9" class="Home">Home</a></li>
					<!--- Call menu widget --->
					<cfinclude template="../../../_includes/design/menu.cfm">	
			</ul><!-- #nav -->

			<div id="contentContainer">
			
			 <div id="home-header">
			  <div id="home-one"> 
			   <h2>Members Content</h2>
			   <p><a href="/index.cfm?fuseaction=Page.ViewPage&pageId=xxx">Learn More ></a></p>
			  </div>
			  <div id="home-two"> 
			   <h2>Resource Library</h2>
			   <p><a href="/index.cfm?fuseaction=Page.ViewPage&pageId=xxx">Explore ></a></p>
			  </div>
			  <div id="home-three"> 
			   <h2>Upcoming Events</h2>
			   <p><a href="/index.cfm?fuseaction=Page.ViewPage&pageId=xxx">Register Now ></a></p>
			  </div>
			 </div><!-- #home-header -->
					
				<div id="mainContent">
