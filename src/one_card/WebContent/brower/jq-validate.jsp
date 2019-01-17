<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'jq-validate.jsp' starting page</title>
<script src="web/js/jquery.min.js"></script>
<script src="web/js/jquery.validate.min.js"></script>

<script>
$(function(){
	
	$("#signupForm").on("submit",function(event){
		alert("sdadas");
		event.preventDefault();
		$(this).validate("sunmitValidate");
	})
	$("#signupForm").validate({
		
		//规则
		rules:{
			firstname:"required",
			lastname:"required",
			password:{
				required:true,
				minlength:6
				
			},
			
			confirm_password:{
				required:true,
				minlength:6,
				equalTo:"#password"
			},
			email:{
				required:true,
				email:true
			}
			
		},
		//消息s
		messages:{
			firstname:"第第四第四",
			lastname:"打算大撒大撒大撒"
		}
		
	});
	
	
});
</script>

</head>

<body>

	<form id="signupForm" method="post" action="web/jq-validate.jsp">
		<fieldset>
			<legend>验证完整的表单</legend>
			<p>
				<label for="firstname">名字</label> <input id="firstname"
					name="firstname" type="text">
			</p>
			<p>
				<label for="lastname">姓氏</label> <input id="lastname"
					name="lastname" type="text">
			</p>
			<p>
				<label for="username">用户名</label> <input id="username"
					name="username" type="text">
			</p>
			<p>
				<label for="password">密码</label> <input id="password"
					name="password" type="password">
			</p>
			<p>
				<label for="confirm_password">验证密码</label> <input
					id="confirm_password" name="confirm_password" type="password">
			</p>
			<p>
				<label for="email">Email</label> <input id="email" name="email"
					type="text">
			</p>
			<p>
				<label for="agree">请同意我们的声明</label> <input type="checkbox"
					class="checkbox" id="agree" name="agree">
			</p>
			<p>
				<label for="newsletter">我乐意接收新信息</label> <input type="checkbox"
					class="checkbox" id="newsletter" name="newsletter">
			</p>
			<fieldset id="newsletter_topics">
				<legend>主题 (至少选择两个) -
					注意：如果没有勾选“我乐意接收新信息”以下选项会隐藏，但我们这里作为演示让它可见</legend>
				<label for="topic_marketflash"> <input type="checkbox"
					id="topic_marketflash" value="marketflash" name="topic">Marketflash
				</label> <label for="topic_fuzz"> <input type="checkbox"
					id="topic_fuzz" value="fuzz" name="topic">Latest fuzz
				</label> <label for="topic_digester"> <input type="checkbox"
					id="topic_digester" value="digester" name="topic">Mailing
					list digester
				</label> <label for="topic" class="error">Please select at least two
					topics you'd like to receive.</label>
			</fieldset>
			<p>
				<input class="submit" type="submit" value="提交">
			</p>
		</fieldset>
	</form>

</body>
</html>
 