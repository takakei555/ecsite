<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserCreateComplete画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>UserCreateComplete</p>
		</div>
		<div>
			<h3>ユーザーの登録が完了致しました。</h3>
			<div>
				<s:if
					test="#sesion.containsKey('loginUser') && #session.loginUser.adminFlg==1">
					<div>
						<a href='<s:url action="AdminAction" />'>管理者TOPへ</a>
					</div>
				</s:if>
				<s:else>
					<div>
						<a href='<s:url action="HomeAction"/>'>ログインへ</a>
					</div>
				</s:else>
			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>