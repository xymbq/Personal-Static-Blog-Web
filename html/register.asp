<!DOCTYPE <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="shortcut icon" href="favicon.ico">
		<title>清风阁-用户注册！</title>
		<link rel="stylesheet" type="text/css" href="../css/register.css" />
		<script src="js/remain.js" type="text/javascript" charset="utf-8"></script>		
		
		<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
		<%
			Response.Expires=0
			ac=Request.querystring("account")
			em=Request.querystring("email")
			ps=Request.querystring("password")
			gd=Request.querystring("gender")	
			mj=Request.querystring("major")
		%>		
	</head>
	<div id="register">
		<p id="form-tittle" style="font-size: 33px;color: #555; text-align: center; margin-top: 28px; padding-top: 28px;">信息确认</p>
		<form id="form1" method="get" action="register.asp">
			<div class="a" ><label>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
			<label id="ac" class="ms"><%Response.Write ac%></label></div>
			<div class="a"> <label>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
			<label id="em" class="ms">
				<%
				Response.Write em
				%>
				</label></div>
			<div class="a"><label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<label id="ps" class="ms">
				<%Response.Write ps%>
				</label></div>
			<div class="a"><label>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
			<label class="ms">
			<% 
			Select Case gd
			Case 1
			response.write "男"
			Case 2
			response.write "女"
			End Select 
			%>	
			</label></div>
			<div class="a"><label>爱&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好</label>
			<label class="ms">
			<%
			if  Request.QueryString("favor").Count=0 then
			%>
			<%else%>
			<% 
			for each fv in Request.QueryString("favor")
				response.write fv & "     "
			next
			end if
			%>
			</label></div>		
			<div class="a"><label>专业班级</label>
			<label class="ms">
				
			<%= mj%>		
			</label></div>
			<div class="bt"><input type="submit" action="#" id="bt1" name="" value="注 册" onclick="register()"/>
			<script>
			function jump(){
			 window.location.href="register.html";
			}
			</script>
			<input type="reset"  id="bt2" name="" value="返 回" onclick="jump()"/>
			
			</div>
		</form>
	</div>
	</body>
</html>
