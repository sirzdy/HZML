<%@page import="java.util.List"%>
<%@page import="com.hzml.entriy.Contact"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>题库管理</title>
<link rel="stylesheet" href="css/960.css" type="text/css" />
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/jquery.cycle.min.all.js"></script>
<script type="text/javascript" src="js/TitilliumText15L_100-TitilliumText15L_400.font.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<style type="text/css">

	body {
		background: #f9fafb url(images/pages/bg.gif) top repeat-x;
	}

</style>
<script type="text/javascript">

Cufon.replace('http://chillyblues.chillyorange.com/h1');
Cufon.replace('http://chillyblues.chillyorange.com/h2');

$(document).ready(function(){
	
	$('#contactForm input, #contactForm textarea').focus(function(){ $(this).stop().animate({backgroundColor: "#fff3c5"}, 500), $(this).css("borderColor", "#f89d1c") })
	
	$('#contactForm input, #contactForm textarea').blur(function(){ $(this).stop().animate({backgroundColor: "#fffff"}, 500), $(this).css("borderColor", "#97b2cd") });
	<%
		if(session.getAttribute("addQuestionSuccess") != null){
			session.removeAttribute("addQuestionSuccess");
	%>
			alert("新题目添加成功!");
	<%
		}
	%>
});

$('#main').ready(function(){
	
	//process possible form errors
});

$(window).load(function () {
  	setInterval("corperationImage()", 300);
});
</script>
</head>

<body>
	<div class="loginbg_div" id="loginbg_div"></div>
    
	<div class="login_div" id="login_div">
		<%
			String peopleName = (String)session.getAttribute("peopleName");
			if(peopleName == null){
		%>
				<a href="login.jsp" style="left:40px; top:5px;">登录</a>
		<%
			} else {
		%>
				<a href="javascript:void(0)" style="left:40px; top:5px;"><%=peopleName %></a>
		<%
			}
		%>
			<a href="login!quitLogin" style="right:39px; top:5px;">退出</a>
	</div>	
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
						<li><a href="projects.jsp">团队成员</a></li>
						<li><a href="showAllTask.jsp">任务展示</a></li>
						<li><a href="about.jsp">关于</a></li>
						<li><a href="contact.jsp">联系</a></li>
					</ul>
				</div><!-- /#qsmMiddle -->
				<div id="qsmBottom"></div>
			</div>
		</div>
		
		<div class="grid_16" id="logo">
			<a href="index.jsp"><img src="images/logo.gif" alt="ChillyBlues" /></a>
		</div>
		<div class="clear"></div>
		
		<div class="grid_16" id="navigation">
			<ul>
				<li><a href="index.jsp"><span>主页</span></a></li>
				<% 
					String peopleType = (String)session.getAttribute("peopleType");
					if(peopleType!=null)
						if(peopleType.equals("user")){
				%>
							<li><a href="userRequest?userRequest=userTaskNoParticipate"><span>用户任务</span></a></li>
							<li><a href="#"><span>新手学习</span></a></li>
				<%
						} else if(peopleType.equals("company")){
				%>
							<li><a href="distributionOfCompany.jsp"><span>公司管理</span></a></li>
				<%
						} else if(peopleType.equals("manager")){
				%>
							<li><a href="messageAction!getAllContactMsg" class="current"><span>管理员</span></a></li>
				<%
						}
				%>
				<li><a href="about.jsp"><span>关于</span></a></li>
				<li><a href="projects.jsp"><span>团队成员</span></a></li>
				<li><a href="contact.jsp"><span>联系</span></a></li>
			</ul>
			<div id="triSlideContainer"><img src="images/currentarrow.gif" alt="arrow" /></div>
		</div>
		
		<div class="grid_16" id="display">
			<ul id="subNavigation">
				<li><a href="messageAction!getAllContactMsg">消息管理</a></li>
				<li><a href="messageAction!getAllContactMsg" class="current">题库管理</a></li>
			</ul>
		</div>
		<div class="clear"></div>
		
	</div><!-- /#main -->
			
	<div class="container_16" id="content">
		
		<div class="grid_11 content contact" id="two_col">
			 <h2>请添加新的题目:</h2>
			 <form action="questionsAction!addQuestion" method="post" id="contactForm">
					<br/>
					<div>
						<label>题目描述:</label>
						<textarea name="questionMsg" rows="5" cols="20" id="message"></textarea>
					</div>
					<div>
						<label>选项A:</label>
						<input type="text" name="optionA" id="optionA"/>
					</div>
					<div>
						<label>选项B:</label>
						<input type="text" name="optionB" id="optionB"/>
					</div>
					<div>
						<label>选项C:</label>
						<input type="text" name="optionC" id="optionC"/>
					</div>
					<div>
						<label>选项D:</label>
						<input type="text" name="optionD" id="optionD"/>
					</div>
					<div>
						<label>正确选项:</label>
					 	<select name="optionCorrect">
						  <option value ="1" selected="selected">A</option>
						  <option value ="2">B</option>
						  <option value="3">C</option>
						  <option value="4">D</option>
						</select>
					</div>
					<div>
						<label>难易程度:</label>
					 	<select name="difficultDegree">
						  <option value ="1" selected="selected">简单</option>
						  <option value ="2">较难</option>
						  <option value="3">难</option>
						</select>
					</div>
					<a class="button" style="float:right" href="#" onclick="$('#contactForm')[0].submit(); return false;" id="send"><span>提交新题目</span></a>
			</form>			
		</div><!-- /#left -->
		<div class="grid_5 news" id="one_col">
			<h2>联系</h2>
			<p>
			<b>在线软件工程团队</b><br/>
			河南省高新区科学大道100号<br/>
			郑州大学新校区<br/><br/>
			phone: 15670637914<br/>
			e-mail: <a href="#">271413190@qq.com</a>
			</p>
		</div><!-- /#right -->
		<div class="clear"></div>
		
	</div><!-- /#content -->
		
	<div id="footerwrapper">
		
		<div class="container_16">
		
			<div class="grid_16" id="footer">
			
				<span id="address"><b>在线软件工程 Web Solutions</b> - qq群:271413190 &nbsp;&nbsp; 邮箱:271413190@qq.com</span>
				<div>
					<ul class="services">
						<li>敏捷开发</li>
						<li>在线团队合作</li>
						<li>新手学习</li>
					</ul>
					<ul class="services">
						<li>项目开发者</li>
						<li>项目发布者</li>
						<li>web维护者</li>
					</ul>
					<ul class="links" id="first">
						<li><a href="index.jsp">主页</a></li>
						<li><a href="about.jsp">关于</a></li>
						<li><a href="#">联系我们</a></li><!-- 自动打开qq  -->
					</ul>
				</div>
			
			</div>
			<div class="clear"></div>
			
		</div>
		
	</div><!-- /#footerwrapper -->
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
