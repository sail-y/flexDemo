package com.ria.flex.action;

import com.ria.flex.model.User;

public class LoginAction {
	public boolean login(User user) {
		System.out.println(user.getName());
		if ("admin".equals(user.getName()) && "123".equals(user.getPassword())) {
			return true;
		} else {
			return false;
		}
	}
}
