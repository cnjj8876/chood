package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAction{
	public String requestProcess(HttpServletRequest request, HttpServletResponse reseponse)throws Throwable;
}
