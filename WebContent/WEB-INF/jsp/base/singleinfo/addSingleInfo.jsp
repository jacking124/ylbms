<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../inc/taglib.jsp"%>
<form id="pagerForm" method="post" action="${ctx}/spec/list">
	<input type="hidden" name="page.pageNo" value="${page.pageNo}" /> <input
		type="hidden" name="page.pageSize" value="${page.pageSize}" />
</form>
<div class="pageContent">
	<form method="post" action="${ctx}/single/add" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>物资编码：</label>
				<input name="owercode" type="text" size="30"/>
			</p>
			<p>
				<label>物资名称：</label>
				<input name="wzname" class="required" type="text" size="30"/>
			</p>
			<p>
				<label>规格型号：</label>
				<input type="text" class="required" name="spectype" value="" />
			</p>
			<p>
				<label>当前位置：</label>
				<input type="text"  value="" name="location" class="textInput">
			</p>
			<p>
				<label>当前状态：</label>
				<select name="state" class="required combox">
					<option value="">请选择</option>
					<option value="1">无效</option>
					<option value="0" selected>有效</option>
				</select>
			</p>
			<p>
				<label>资产种类：</label>
				<select name="classId" class="required combox">
					<option value="">请选择</option>
					<option value="个人">个人</option>
					<option value="公司" selected>公司</option>
				</select>
			</p>
			<p>
				<label>生产厂家：</label>
				<input type="text" size="30" name="factory"/>
			</p>
			<p>
				<label>出厂编号：</label>
				<input type="text" name="factoryCode" class="textInput" size="30" />
			</p>
			<p>
				<label>检测日期：</label>
				<input type="text" name="jd_time" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
			<p>
				<label>所属单位：</label>
				<input type="text" name="sc_unit" class="textInput" size="30" />
			</p>
				<!-- <label>所属单位：</label>
				<select name="sc_unit" class="required combox">
					<option value="">请选择</option>
					<option value="10">10</option>
					<option value="50" selected>50</option>
					<option value="100">100</option>
				</select>
				<span class="unit">万元</span>
				 
			</p>-->
			<p>
				<label>有效日期：</label>
				<input type="text" name="yx_Time" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>报废日期：</label>
				<input type="text" name="bf_Time" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>启用日期：</label>
				<input type="text" name="qy_Time" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>计量类别：</label>
				<input type="text" size="30" name="type_Id" />
			</p>
			<p>
				<label>精确度：</label>
				<input type="text" size="30" name="zqd" />
			</p>
			<p>
				<label>使用次数：</label>
				<input type="text" size="30" name="userTimes" />
			</p>
			<p>
				<label>价格：</label>
				<input type="text" size="30" name="price" />
			</p>
			<p>
				<label>是否能源器具：</label>
				<input type="text" size="30" name="isnyqj"/>
			</p>
			<p>
				<label>测量范围：</label>
				<input type="text" size="30" name="clfw" />
			</p>
			<p>
				<label>是否强检：</label>
				<input type="text" size="30" name="isqj"/>
			</p>
			<p>
				<label>出厂日期：</label>
				<input type="text" name="chc_Date" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>ABC形式：</label>
				<input type="text" size="30" name="form" />
			</p>
			<p>
				<label>固定资产编码：</label>
				<input readonly="readonly" type="text" size="30" name="gdzc_Code"/>
			</p>
			<div class="divider"></div>
			<p>
				<label>条码号：</label>
				<input readonly="readonly" type="text" size="30" name="tx_Code" />
			</p>
			<p>
				<label>安装位置：</label>
				<input readonly="readonly" type="text" size="30" name="az_Location" />
			</p>
			<p>
				<label>购入日期：</label>
			    <input type="text" name="gr_Date" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>四位定号：</label>
				<input readonly="readonly" type="text" size="30" name="shdw"/>
			</p>
			<p>
				<label>其他指标：</label>
				<input readonly="readonly" type="text" size="30" name="other"/>
			</p>
			<p><label>录入人员：</label>
				<input readonly="readonly" type="text" size="30" name="creater"/>
			</p>
			<p>
				<label>录入时间：</label>
				<input type="text" name="createDate" class="date" size="30" /><a class="inputDateButton" href="javascript:;">选择</a>
			</p>
			<p>
				<label>状态信息：</label>
				<input readonly="readonly" type="text" size="30" name="status"/>
			</p>
			<p>
				<label>备注信息：</label>
				<input readonly="readonly" type="text" size="30" name="remark"/>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
