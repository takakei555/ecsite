<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Home画面</title>
</head>
<body>
	<div id="header">

		<div id="pr"></div>

	</div>

	<div id="main">
		<div id="top">
			<p>管理者TOP画面</p>
		</div>

		<div id="item">
			<div id="box">
				<div id="titlebox">
					<span id="title">商品</span>
				</div>

				<div id="text-center">
					<s:form action="ItemListAction">
						<s:submit value="商品一覧" />
					</s:form>

					<s:form action="ItemCreateAction">
						<s:submit value="商品追加" />
					</s:form>
				</div>
			</div>
		</div>

		<div id="user">
			<div id="box">
				<div id="titlebox">
					<span id="title">ユーザー</span>
				</div>

				<div id="text-center">
					<s:form action="UserListAction">
						<s:submit value="ユーザー一覧" />
					</s:form>
					<s:form action="UserCreateAction">
						<s:submit value="ユーザー追加" />
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<div id="text-right">
		<p>
			ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a>
		</p>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>