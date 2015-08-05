<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Portfolio and Product pages - 关于 Us | ChillyBlues Web Builders</title>
<link rel="stylesheet" href="css/960.css" type="text/css" />
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/jquery.cycle.min.all.js"></script>
<script type="text/javascript" src="js/TitilliumText15L_100-TitilliumText15L_400.font.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<style type="text/css">

body {
	background: #f9fafb url(images/pages/bg.gif) top repeat-x;
}

</style>
</head>

<body>
	<div class="container_16" id="main">
		
		<div class="grid_16" id="top">
			<a href="#" id="qsm">quick select menu <img id="down" src="images/dropdowntriangle.gif" alt="dropdown" /><img id="up" src="images/dropdowntriangle_.gif" alt="dropdown" /></a>
			<div id="qsmContainer">
				<div id="qsmTop"></div>
				<div id="qsmMiddle">
					<div id="search">
						<input type="text" value="search site" onfocus="if(this.value == 'search site'){this.value = ''}" />
						<img src="images/search.gif" alt="search" />
					</div>
					<div class="clear"></div>
					<ul>
						<li><a href="index.jsp">主页</a></li>
						<li><a href="团队成员.jsp">团队成员</a></li>
						<li><a href="#">services</a></li>
						<li>
							<a href="blog.jsp">News</a>
							<ul>
								<li><a href="post.jsp">First newsitem</a></li>
								<li><a href="post.jsp">Second newsitem</a></li>
							</ul>
						</li>
						<li><a href="contact.jsp">联系</a></li>
					</ul>
				</div><!-- /#qsmMiddle -->
				<div id="qsmBottom"></div>
			</div>
		</div>
		<div class="clear"></div>
		
		<div class="grid_16" id="logo">
			<a href="index.jsp"><img src="images/logo.gif" alt="ChillyBlues" /></a>
		</div>
		<div class="clear"></div>
		
		<div class="grid_16" id="navigation">
			<ul>
				<li><a href="index.jsp"><span>主页</span></a></li>
				
				<li><a href="#" class="current"><span>用户任务</span></a></li>
				<li><a href="#" class="current"><span>公司管理</span></a></li>
				<li><a href="#" class="current"><span>管理员</span></a></li>
				<li><a href="#" class="current"><span>新手学习</span></a></li>
				
				<li><a href="about.jsp" class="current"><span>关于</span></a></li>
				<li><a href="团队成员.jsp"><span>团队成员</span></a></li>
				<li><a href="contact.jsp"><span>联系</span></a></li>
			</ul>
			<div id="triSlideContainer"><img src="images/currentarrow.gif" alt="arrow" /></div>
		</div>
		
		<div class="grid_16" id="display">
			<ul id="subNavigation">
				<li><a href="about.jsp">slideshow</a></li>
				<li><a href="quickselectmenu.jsp">quick select menu</a></li>
				<li><a href="port.jsp" class="current">portfolio</a></li>
				<li><a href="sidebars.jsp">sidebars</a></li>
			</ul>
		</div>
		<div class="clear"></div>
		
	</div><!-- /#main -->
			
	<div class="container_16" id="content">
		
		<div class="grid_11 content" id="two_col">
			<h2>Portfolio and Product pages</h2>
			<p>
			<img src="images/关于us.jpg" alt="关于us" />
			The ChillyBlues theme support two different types of product/portfolio pages and both can be used for:
			</p>
			<ul>
				<li>Displaying a design portfolio</li>
				<li>Displaying a picture gallery</li>
				<li>Displaying a series of products</li>
				<li>Displaying a series of 团队成员</li>
			</ul>
			<h3>Portfolio type1</h3>
			<p>
			The first portfolio displays small pictures for each item and will show some caption text when the mouse cursor hovers over it. Items are are laid out in rows of three items per row. Look here for an <a href="团队成员.jsp">example</a>.
			</p>
			<h3>Portfolio type2</h3>
			<p>
			The second portfolio displays one item per row: first a small picture and on the left a description of the item. For an example of this portfolio, have a look <a href="团队成员2.jsp">here</a>.
			</p>
		</div><!-- /#two_col -->
		<div class="grid_5 news" id="one_col">
		
			<!--<h2>News & Events</h2>
			<ul>
			<li>
				<div class="cal">
					<div class="month">aug</div>
					<div class="date">26</div>
				</div>
				<a href="post.jsp">First newsitem</a>
			</li>
			<li>
				<div class="cal">
					<div class="month">aug</div>
					<div class="date">26</div>
				</div>
				<a href="post.jsp">Second newsitem</a>
			</li>
			<li>
				<div class="cal">
					<div class="month">aug</div>
					<div class="date">26</div>
				</div>
				<a href="post.jsp">And a third newsitem</a>
			</li>
			</ul>
			<a href="blog.jsp" id="moreNews">more news</a>-->
			
			<h2>Testimonials</h2>
			<div id="testimonials">
				<div>
					<div>
					"Praesent vulputate euismod fringilla. Sed nec luctus lacus. Aliquam molestie massa at dolor ultrices dapibus. Donec non lorem nisi, ac lacinia nisl."
					</div>
					<div class="by">Someone - <a href="#">Some organization</a></div>
				</div>
				<div>
					<div>
					"Fusce mollis justo id nisi volutpat laoreet. Vivamus sed sem vel ligula bibendum semper euismod et lacus. Suspendisse potenti. Proin magna risus."
					</div>
					<div class="by">Someone else - <a href="#">Some organization</a></div>
				</div>
				<div>
					<div>
					"Praesent vulputate euismod fringilla. Sed nec luctus lacus. Aliquam molestie massa at dolor ultrices dapibus. Donec non lorem nisi, ac lacinia nisl."
					</div>
					<div class="by">Someone - <a href="#">Some organization</a></div>
				</div>
			</div>
			
		</div><!-- /#one_col -->
		<div class="clear"></div>
		
	</div><!-- /#content -->
		
	<div id="footerwrapper">
		
		<div class="container_16">
		
			<div class="grid_16" id="footer">
				<span id="address"><b>ChillyBlues Web Solutions</b> - Somewherestreet 22 12345 Somewhere Town - phone: 000 123 456 789 - @: info@chillyblues.com</span>
			
				<div>
					<ul class="services">
						<li>web design</li>
						<li>design customization</li>
						<li>CMS systems</li>
					</ul>
					<ul class="services">
						<li>Wordpress themes/setups</li>
						<li>Slicing PSD's into HTML/WP</li>
						<li>code/html optimization</li>
					</ul>
					<ul class="links" id="first">
						<li><a href="index.jsp">主页</a></li>
						<li><a href="about.jsp">关于</a></li>
						<li><a href="http://www.cssmoban.com/">Portfolio</a></li>
					</ul>
				</div>
			
			</div>
			<div class="clear"></div>
			
		</div>
		
	</div><!-- /#footerwrapper -->
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
