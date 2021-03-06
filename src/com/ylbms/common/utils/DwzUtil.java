package com.ylbms.common.utils;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class DwzUtil {
	public static final int OK = 200;
	public static final int FAIL = 300;
	public static final int TIMEOUT = 301;

	/**
	 * DwzAjax服务器端响应
	 * 
	 * @param statusCode
	 *            状态码
	 * @param navTabId
	 *            要刷新的页面的rel
	 * @return
	 */
	public static Map<String, Object> dialogAjaxDone(int statusCode,
			String navTabId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("statusCode", statusCode);
		map.put("message", (statusCode == OK) ? "操作成功！" : "操作失败！");
		if (StringUtils.isNotEmpty(navTabId)) {
			map.put("navTabId", navTabId);
			map.put("callbackType", "closeCurrent");
		}
		return map;
	}

	public static Map<String, Object> dialogAjaxDone(int statusCode,
			String navTabId, String message) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("statusCode", statusCode);
		map.put("message", message);
		if (StringUtils.isNotEmpty(navTabId)) {
			map.put("navTabId", navTabId);
			map.put("callbackType", "closeCurrent");
		}
		return map;
	}

	/**
	 * dwzAjax服务器超时
	 * 
	 * @param statusCode
	 * @param navTabId
	 * @return
	 */
	public static Map<String, Object> dialogAjaxDoneTimeOut() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("statusCode", DwzUtil.TIMEOUT);
		map.put("message", "系统登录会话超时，请您重新登录！");
		map.put("callbackType", "");
		map.put("forwardUrl", "");

		return map;
	}

	/**
	 * DwzAjax服务器端响应
	 * 
	 * @param statusCode
	 *            状态码
	 * @return
	 */
	public static Map<String, Object> dialogAjaxDone(int statusCode) {
		return dialogAjaxDone(statusCode, null);
	}

	/**
	 * DwzAjax服务器超时响应
	 * 
	 * @param statusCode
	 *            状态码
	 * @return
	 */
	public static Map<String, Object> dialogAjaxDoneTimeout(int statusCode) {
		return dialogAjaxDone(statusCode, null);
	}
}
