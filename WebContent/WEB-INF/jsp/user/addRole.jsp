<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp"%>
<div class="pageContent">
	<form method="post" action="${ctx}/user/addRole"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<input type="hidden" name="roleIds" id="roleIds" value="${roleIds}">
			<input type="hidden" name="id"  value="${userId}" >
			<!-- 华丽分界线-->
			<div id="itemselector" class="om-itemselector om-widget" style="width: 80px;"></div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div></li>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>
</div>
