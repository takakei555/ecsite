package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserCreateConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware {

	private String loginId;
	private String loginPassword;
	private String userName;
	private Map<String, Object> session;
	private String errorMessage;

	public String execute() {
		String result = SUCCESS;

		if (!(loginId.equals(""))
				&& !(loginPassword.equals(""))
				&& !(userName.equals(""))) {
			UserCreateConfirmDAO dao = new UserCreateConfirmDAO();
			if (!dao.isExitUser(loginId)) {
				session.put("loginId", loginId);
				session.put("loginPassword", loginPassword);
				session.put("userName", userName);
			} else {
				setErrorMessage("既に登録されているログインIDです。");
				result = ERROR;
			}
		} else {
			setErrorMessage("未入力の項目があります。");
			result = ERROR;
		}
		return result;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
