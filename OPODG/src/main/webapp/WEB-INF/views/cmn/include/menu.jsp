<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="util.constants.*"%>
<div data-role="panel" class="jqm-navmenu-panel" data-position="left" data-display="overlay" data-theme="a">
   	<ul class="jqm-list ui-alt-icon ui-nodisc-icon">
		<li data-filtertext="opodg demos homepage" data-icon="home"><a href="index.web" data-transition="slide">Home</a></li>
		<li data-filtertext="opodg introduction"><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_INTRODUCTION %>" data-transition="slide">Introduction</a></li>
		<li data-filtertext="notification"><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_NOTIFICATION_LIST %>" data-transition="slide">Notification</a></li>
		<li data-role="collapsible" data-enhanced="true" data-collapsed-icon="carat-d" data-expanded-icon="carat-u" data-iconpos="right" data-inset="false" class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed">
			<h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
				<a href="#" class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-right ui-btn-inherit ui-icon-carat-d">
					Community<span class="ui-collapsible-heading-status"> click to expand contents</span>
				</a>
			</h3>
			<div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="true">
				<ul>
					<li data-filtertext="자유게시판"><a href="../backbone-requirejs/" data-ajax="false">자유게시판</a></li>
					<li data-filtertext="정보공유"><a href="../map-geolocation/" data-ajax="false">정보공유</a></li>
					<li data-filtertext="자료실"><a href="../map-list-toggle/" data-ajax="false">자료실</a></li>
				</ul>
			</div>
		</li>
		<li data-filtertext="Community"><a href="<%=request.getContextPath() %>/map.web" data-ajax="false">map</a></li>
     </ul>
</div><!-- /panel -->
<!-- TODO: This should become an external panel so we can add input to markup (unique ID) -->
<div data-role="panel" class="jqm-search-panel" data-position="right" data-display="overlay" data-theme="a">
	<div class="jqm-search">
		<ul class="jqm-list" data-filter-placeholder="Search demos..." data-filter-reveal="true">
			<li data-filtertext="opodg demos homepage" data-icon="home"><a href="index.web" data-transition="slide">Home</a></li>
			<li data-filtertext="opodg introduction"><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_INTRODUCTION %>" data-transition="slide" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Introduction</a></li>
			<li data-filtertext="notification"><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_NOTIFICATION_LIST %>" data-transition="slide" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Notification</a></li>
			<li data-role="collapsible" data-enhanced="true" data-collapsed-icon="carat-d" data-expanded-icon="carat-u" data-iconpos="right" data-inset="false" class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed">
				<h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
					<a href="#" class="ui-collapsible-heading-toggle ui-btn ui-btn-icon-right ui-btn-inherit ui-icon-carat-d">
						Community<span class="ui-collapsible-heading-status"> click to expand contents</span>
					</a>
				</h3>
				<div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="true">
					<ul>
						<li data-filtertext="자유게시판"><a href="../backbone-requirejs/" data-ajax="false">자유게시판</a></li>
						<li data-filtertext="정보공유"><a href="../map-geolocation/" data-ajax="false">정보공유</a></li>
						<li data-filtertext="자료실"><a href="../map-list-toggle/" data-ajax="false">자료실</a></li>
					</ul>
				</div>
			</li>
			<li data-filtertext="Community"><a href="<%=request.getContextPath() %>/map.web" data-ajax="false">map</a></li>
		</ul>
	</div>
</div><!-- /panel -->
