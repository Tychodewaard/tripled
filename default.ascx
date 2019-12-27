<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="tosic" TagName="PageTitle" src="controls/optimize-page-title.ascx" %>
<tosic:PageTitle runat="server" />
<%@ Register TagPrefix="tosic" TagName="BodyCssClasses" src="controls/body-css-classes.ascx" %>
<tosic:BodyCssClasses runat="server" />

<%--
  more infos on 2sxc quick-edit: https://2sxc.org/en/blog/post/quick-edit-2-add-move-delete-modules-in-preview-touch-capable-for-dnn
--%>
<%@ Register TagPrefix="tosic" TagName="SxcQuickEdit" src="controls/2sxc-quickedit.ascx" %>
<tosic:SxcQuickEdit runat="server" />

<%-- Include Google Font 
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
--%>


<a class="sr-only sr-only-focusable" href="#content"><%= LocalizeString("SkipLink.MainContent") %></a>

<div class="ly-fullwrapper">
	<header>
		<div class="container-fluid clearfix">
			<div class="ly-container-inner">
				<div class="ly-overlay"></div>	
				<div id="nav-icon" class="ly-nav-mobile-trigger float-left" title="Menu">
					<span></span>
					<span></span>
					<span></span>
				</div>
				<nav id="nav-mobile">
					<div class="ly-header-mobile">
						<div class="container-fluid clearfix">
							<a href="#" class="ly-close"></a>
							<a class="ly-logo" href="/" title="TripleD Firesafety">			
								<img alt="Logo" src="<%#SkinPath%>images/logo.png" data-fallback="<%#SkinPath%>images/logo.png" onerror="this.src=this.getAttribute('data-fallback');this.onerror=null;">
							</a>
						</div>
					</div>
					<dnn:MENU MenuStyle="nav/main-mobile" NodeSelector="*,0,6" runat="server" />
				</nav>

				<a class="ly-logo" href="/" title="ripleD Firesafety)">			
					<img alt="Logo" src="<%=SkinPath%>images/logo.png" data-fallback="<%=SkinPath%>images/logo.png" onerror="this.src=this.getAttribute('data-fallback');this.onerror=null;">
				</a>

				<nav id="nav-desktop" class="navbar d-none d-lg-block">
					<dnn:MENU MenuStyle="nav/main" runat="server" />
				</nav>

			</div>
		</div>
	</header>

	<div class="container-fluid ly-header-pane <%= (HeaderPane.Attributes["class"] ?? "").Contains("DNNEmptyPane") ? "ly-header-pane-empty" : "" %>">
		<div class="ly-container-inner">
			<div id="HeaderPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
		</div>
	</div>

	<div id="content">
		<div class="container-fluid ly-content">
		
			<div class="ly-container-inner">
				<div class="ly-contentpane-full">
					<div id="ContentPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-lg-9 order-lg-2 ly-col-contentpane">
						<div id="RightPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
					</div>
					<div class="col-xs-12 col-lg-3 order-lg-1 ly-col-leftpane">
							<div id="LeftPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
					</div>
				</div>

			<div class="ly-footerpane ">
					<div id="FooterPaneLeft" class="col-md-6  footer-background" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
					<div id="FooterPaneRight" class="col-md-6  footer-background" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
				</div>
			</div>
	<div class="container-fluid">
			<div id="FullPane" runat="server" containertype="G" containername="Invisible Container" containersrc="default.ascx"></div>
	</div>
			  <div class="wide">
    <div class="row">
      <div id="LeftHalfPane1" class="col-md-6" runat="server"></div>
      <div id="RighttHalfPane1" class="col-md-6" runat="server"></div>
    </div>
  </div> 
			<a class="ly-top" href="#" title="Back to top"><i></i></a>
		</div>
	</div>
	<div class="ly-push"></div>
</div>
<footer>
    <div class="container-fluid">
        <div class="ly-container-inner clearfix">
              <ul class="ly-footer-address clearfix" itemscope itemtype="http://schema.org/LocalBusiness">
				<li>
					<strong itemprop="name">TripleD Fire Safety</strong>
				</li>
				<li>
					<span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
						<span itemprop="streetAddress">De Hooge Krocht 16</span>,
						<span itemprop="postalCode">2201 TX</span>
						<span itemprop="addressLocality">Noordwijk</span>
					</span>
				</li>
                <li><i class="fas fa-phone"></i>&nbsp;<a href="tel:+31611296227">+31 611 296 227</a></li>
				<li>
					<i class="far fa-envelope"></i>&nbsp;<span data-madr1="info" data-madr2="tripledfiresafety" data-madr3="nl" data-linktext="info@tripledfiresafety.nl"></span>
				</li>
            </ul>
            <div class="ly-footer-imprint">
                <dnn:login id="DnnLogin" cssclass="ly-login d-sm-none-down" runat="server" />
<!--                <a href="<%= LocalizeString("Imprint.Url") %>" title="<%= LocalizeString("Imprint.Text") %>"><%= LocalizeString("Imprint.Text") %></a> | 
-->				<a href="<%= LocalizeString("Privacy.Url") %>" title="<%= LocalizeString("Privacy.Text") %>"><%= LocalizeString("Privacy.Text") %></a>
            </div>
        </div>
    </div>
</footer>


<!-- include files -->
<dnn:DnnCssInclude runat="server" FilePath="dist/main.min.css" Priority="100" PathNameAlias="SkinPath" />

<dnn:DnnJsInclude runat="server" FilePath="dist/lib/bootstrap.min.js" ForceProvider="DnnFormBottomProvider" Priority="100" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="dist/lib/jquery.sidr.min.js" ForceProvider="DnnFormBottomProvider" Priority="110" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="dist/main.min.js" ForceProvider="DnnFormBottomProvider" Priority="130" PathNameAlias="SkinPath" />

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

<script runat="server">
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
	}
	
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		AttachCustomHeader("<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no' />");
	}
	
	protected void AttachExternalCSS(string CSSPath) { AttachCustomHeader("<link type='text/css' rel='stylesheet' href='" + CSSPath + "' />"); }
	protected void AttachExternalJS(string JSPath) { AttachCustomHeader("<script type='text/javascript' src='" + JSPath + "'></scr" + "ipt>"); }
	protected void AttachCustomHeader(string CustomHeader) { HtmlHead HtmlHead = (HtmlHead)Page.FindControl("Head"); if ((HtmlHead != null)) { HtmlHead.Controls.Add(new LiteralControl(CustomHeader));	}	}
	
	protected string LocalizeString(string key)
	{
			return Localization.GetString(key, Localization.GetResourceFile(this, System.IO.Path.GetFileName(this.AppRelativeVirtualPath)));
	}
</script>


