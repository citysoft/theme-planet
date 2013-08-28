<!--- 
Theme: 	Planet v.2
File: 	header.cfm
--->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<cfoutput>
  <title>Planet Theme |
  <cfif isHomepage>
    Home
    <cfelse>
    #attributes.pagetitle#
  </cfif>
  </title>
  #getMetaTags()#</cfoutput>
<cfoutput>
  <link rel="stylesheet" href="../_data/#vnodefolder#/styles/main.css" type="text/css" media="screen" />
  <cfif isHomepage>
    <link rel="stylesheet" href="../_data/#vnodefolder#/styles/home.css" type="text/css" media="screen" />
  </cfif>
</cfoutput>
<cfif isHomepage>
  <style type="text/css">
a.Home {
	background-color: #ece5c7;
}
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

</head><body >
<div id="container2">
<div class="mainColumn1">
  <div id="header" style="text-align:center;"> <a id="logo" href="#" title="Planet Theme"> </a> </div>
  
  <!-- #header -->
  <div id="socialmedia">
    <p>Follow Us.</p>
    <div> <cfoutput> <a href=""><img src="/_data/#vNodeFolder#/images/facebook.png" alt="Facebook" /></a> <a href=""><img src="/_data/#vNodeFolder#/images/twitter.png" alt="Twitter" /></a> <a href=""><img src="/_data/#vNodeFolder#/images/pinterest.png" alt="Pinterest" /></a> <a href=""><img src="/_data/#vNodeFolder#/images/googleplus.png" alt="Google Plus" /></a> <a href=""><img src="/_data/#vNodeFolder#/images/youtube.png" alt="YouTube" /></a> </cfoutput> </div>
  </div>
  <!-- #socialmedia--> 
  <br clear="all"/>
  
  
  <!-- NAV 
<div id="mainNavBackg">-->


<!--- START: Navigation.  Navigation is defined within a <ul><li> structure and uses the "nav" id 
			which is defined in the css file.  --->
			<!--<ul id="nav" class="drop" style="border-right:0px; border-bottom:0px;"> -->
					<!--- The following variables are used in the navigation to manage which pages are 
					allowed in the navigation (e.g. password protected pages would typicallly not be allowed 
					in the navigation for a non-logged in user, unless you were trying to tease the restricted
					content).  These variables can also be set to "private" and NULL (ie not defined at all) --->
					<!---<cfif not isDefined("client.userID") or client.userId lte 0>
						<cfset navvariant="public">
						<cfset topmenu_show="public">
                    <cfelse>
						<cfset navvariant="roleid">
						<cfset topmenu_show="roleid">
					</cfif> --->
					<!--- Include main navigation file.  This will in turn include a cached navigation
					file that, in conjunction with the id defined above and the .css file, will define 
					the navigation (e.g. a drop down menu structure). --->
					<!---<cfinclude template="../../../_includes/design/menu.cfm">--->

					<!--- Example of adding a design file "component" (e.g. login related links).
					These can be custom or from pre-built CE base code components. --->
					<!---<cfif isDefined("client.userid") and client.userid NEQ 0>
							<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
						<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
							<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
						</cfif> --->
						<!--- <li class="member"><a href="index.cfm?pageId=500">My Membership</a>
													<ul>
														<li><a href="index.cfm?pageId=524">My Subscriptions</a></li>
														<li><a href="index.cfm?pageId=525">My Profile</a></li>
													</ul>
												</li> --->
					<!---<cfelse>
						<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=482">Member Login</a></li>
					</cfif> --->
			<!--</ul> -->
			<!--- END: Navigation --->

  
  <!--- none fly-out Menus --->
  <ul id="nav">
    <cfif not isDefined("client.userID") or client.userId lte 0>
      <cfset topmenu_show="public">
      <cfelse>
      <cfset topmenu_show="roleid">
    </cfif>
    <li><a href="/index.cfm" class="Home">Home</a></li>
    <!--- Call menu widget --->
    <cfinclude template="../../../_includes/design/menu.cfm">
  </ul>
  
<!--  </div>
 /END -->
  
  
</div>


<div class="mainColumn2">
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
  </div>
  <!-- #home-header --> 
</div>
<br clear="all"/>
<div class="contentPadding">
