<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style> li{margin:8px;}</style>
<title>客户关系管理系统登录</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<STYLE type=text/css>
BODY {
	TEXT-ALIGN: center;
	PADDING-BOTTOM: 0px;
	BACKGROUND-COLOR: #ddeef2;
	MARGIN: 0px;
	PADDING-LEFT: 0px;
	PADDING-RIGHT: 0px;
	PADDING-TOP: 0px
}

A:link {
	COLOR: #000000;
	TEXT-DECORATION: none
}

A:visited {
	COLOR: #000000;
	TEXT-DECORATION: none
}

A:hover {
	COLOR: #ff0000;
	TEXT-DECORATION: underline
}

A:active {
	TEXT-DECORATION: none
}

.input {
	BORDER-BOTTOM: #ccc 1px solid;
	BORDER-LEFT: #ccc 1px solid;
	LINE-HEIGHT: 20px;
	WIDTH: 182px;
	HEIGHT: 20px;
	BORDER-TOP: #ccc 1px solid;
	BORDER-RIGHT: #ccc 1px solid
}

.input1 {
	BORDER-BOTTOM: #ccc 1px solid;
	BORDER-LEFT: #ccc 1px solid;
	LINE-HEIGHT: 20px;
	WIDTH: 120px;
	HEIGHT: 20px;
	BORDER-TOP: #ccc 1px solid;
	BORDER-RIGHT: #ccc 1px solid;
}
</STYLE>
<script type="text/javascript">
	function login(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		var roleName=$("#roleName").val();
		if(userName==null||userName==""){
			alert("用户名不能为空！");
			return;
		}
		if(password==null||password==""){
			alert("密码不能为空！");
			return;
		}
		if(roleName==null||roleName==""){
			alert("请选择用户类型！");
			return;
		}
		$("#adminlogin").submit();			
		
	}
</script>
</head>
<body>
<FORM id=adminlogin  method=post
	name=adminlogin action="${pageContext.request.contextPath}/user/login.do"  >
<DIV></DIV>
<TABLE style="MARGIN: auto; WIDTH: 100%; HEIGHT: 100%" border=0
	cellSpacing=0 cellPadding=0>
	<TBODY>
		<TR>
			<TD height=150>&nbsp;</TD>
		</TR>
		<TR style="HEIGHT: 254px">
			<TD>
			<DIV style="MARGIN: 0px auto; WIDTH: 936px"><IMG
				style="DISPLAY: block" src="${pageContext.request.contextPath}/images/body_03.jpg"></DIV>
			<DIV style="BACKGROUND-COLOR: #e44520">
			<DIV style="MARGIN: 0px auto; WIDTH: 936px">
			<DIV
				style="BACKGROUND: url(${pageContext.request.contextPath}/images/body_05.jpg) no-repeat; HEIGHT: 155px">
			<DIV
				style="TEXT-ALIGN: left; WIDTH: 265px; FLOAT: right; HEIGHT: 125px; _height: 95px">
			<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
				<TBODY>
					<TR>
						<TD style="HEIGHT: 45px"><INPUT type="text" class=input value="${user.userName }" name="userName" id="userName"></TD>
					</TR>
					<TR>
						<TD><INPUT type="password" class=input value="${user.password }" name="password" id="password"/></TD>
					</TR>
					<TR>
						<td>
							<select id="roleName" name="roleName" class="input" style="margin-top: 15px;height: 24px">
								<option value="">请选择用户类型...</option>
								<option value="系统管理员"  ${'系统管理员'==user.roleName?'selected':'' }>系统管理员</option>
								<option value="销售主管"  ${'销售主管'==user.roleName?'selected':'' }>销售主管</option>
								<option value="客户经理"  ${'客户经理'==user.roleName?'selected':'' }>客户经理</option>
								<option value="高管"  ${'高管'==user.roleName?'selected':'' }>高管</option>
							</select>
						</td>
					</TR>
				</TBODY>
			</TABLE>
			</DIV>
			<DIV style="HEIGHT: 1px; CLEAR: both"></DIV>
			<DIV style="WIDTH: 380px; FLOAT: right; CLEAR: both">
			<TABLE border=0 cellSpacing=0 cellPadding=0 width=300>
				<TBODY>
					
					<TR>
						<TD width=100 align=right><INPUT
							style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
							id=btnLogin src="${pageContext.request.contextPath}/images/btn1.jpg" type=image name=btnLogin onclick="javascript:login();return false;"></TD>
						<TD width=100 align=middle><INPUT
							style="BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px"
							id=btnReset src="${pageContext.request.contextPath}/images/btn2.jpg" type=image name=btnReset onclick="javascript:reset();return false;"></TD>
					</TR>
				</TBODY>
			</TABLE>
			</DIV>
			</DIV>
			</DIV>
			</DIV>
			<DIV style="MARGIN: 0px auto; WIDTH: 936px"><IMG
				src="${pageContext.request.contextPath}/images/body_06.jpg"></DIV>
			</TD>
		</TR>
		<TR style="HEIGHT: 30%">
			<TD>&nbsp;</TD>
		</TR>
	</TBODY>
</TABLE>
</FORM>
</body>
     <tbody>
     <tr>
     <td width="120" height="30" align="left">
     <span class="STYLE4">公共区</span> 
     </td><td width="29" height="30" align="left"><img width="4" height="5" src="..\images\001.png"></td>
     <td width="910" height="30"><span class="STYLE5"><div>
     <ul>
     <li style="display: inline-block;">
     <a href="http://oldoa.smartdot.com.cn/indishare/sitemaster.nsf/(page)/newhomepage?open" target="_blank">旧OA办公系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://172.20.90.191/K3WEB/login.aspx" target="_blank">报销系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://jygl.smartdot.com.cn/jygl/office.nsf" target="_blank">决议督办系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://myweb.smartdot.com.cn/ywgl" target="_blank">业务管理系统销售平台</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://hr.smartdot.com.cn" target="_blank">人力资源管理系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://bms.smartdot.com.cn:8080/esweb/" target="_blank">商机管理系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://bms.smartdot.com.cn:8080/esweb/" target="_blank">项目采购管理IT系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://km.smartdot.com.cn/" target="_blank">知识管理系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://vp.smartdot.com.cn:8080/project/login.jsp" target="_blank">项目管理系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://tycp.smartdot.com:8082/redmine" target="_blank">通用产品资料库及问题跟踪系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://zhidao.smartdot.com.cn/" target="_blank">慧点知道</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://download.smartdot.com.cn/" target="_blank">慧点软件管理平台</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://172.20.90.175:8080/smartpub/logon.jsp" target="_blank">多媒体看板管理</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://oldoa.smartdot.com.cn/smartdot/pgps.nsf" target="_blank">销售合同成本评估</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://wrt.smartdot.com.cn:8083/presale_weekreport_webapp/login" target="_blank">售前支持管理系统</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://dmserver.smartdot.com.cn/sqkm/doccenter.nsf/frmKMMainPage?openform&amp;count=20" target="_blank">售前文档中心</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://jianbao.smartdot.com.cn" target="_blank">公司简报</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://oa.smartdot.com.cn/slplugin.rar" target="_blank">新OA控件</a>
     </li>&nbsp;|&nbsp;<li style="display: inline-block;"><a href="http://172.20.90.191/K3WEB/login.aspx" target="_blank">报销系统</a></li>
     </ul>
     </div>
     </span>
     </td>
     </tr>
     </tbody>
  <p Style="color:red;size=:5px;">Copyright 2013 © Smartdot Technologies Co., Ltd. 北京慧点科技有限公司版权所有 京ICP备12041864号-1 | 京公网安备11010802015712号 </p>
</html>
<script type=text/javascript>
	if('${errorMsg}'!=''){
		alert('${errorMsg}');
	}
</script>