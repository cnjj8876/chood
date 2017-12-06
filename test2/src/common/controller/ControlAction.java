package common.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControlAction extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private Map<String , Object> commandMap =new HashMap<String, Object>();
	
	public void init(ServletConfig config)throws ServletException {
		loadProperties("/properties/Command");
	}
	
	private void loadProperties(String path){
		ResourceBundle resourceBundleHome = ResourceBundle.getBundle(path);
		
		Enumeration <String> actionEnumHone = resourceBundleHome.getKeys();
		
		while(actionEnumHone.hasMoreElements()) {
			String command = actionEnumHone.nextElement();
			String className = resourceBundleHome.getString(command);
			System.out.println(className);
			try {
				Class<?> commandClass = Class.forName(className);
				Object commandInstance = commandClass.newInstance();
				commandMap.put(command, commandInstance);
			}catch(ClassNotFoundException e ) {
				continue;
			}
			catch(InstantiationException e) {
				e.printStackTrace();
			}
			catch(IllegalAccessException e){
				e.printStackTrace();
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			requestProcess(request, response);
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			requestProcess(request, response);
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}
	
	
	private void requestProcess(HttpServletRequest request, HttpServletResponse reseponse) throws Throwable {
		String view = null;
		CommandAction com = null;

		try {
				String command = request.getRequestURI();
				if(command.indexOf(request.getContextPath())==0) {
					command = command.substring(request.getContextPath().length());
					System.out.println(command);
				}
				com= (CommandAction)commandMap.get(command);
				
				if(com==null) {
					System.out.println("not found : " + command);
					return;
				}
				view = com.requestProcess(request, reseponse);
				
				if(view == null) {
					return;
				}
			}
			catch (Throwable e) {
				throw new ServletException(e);
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		
		dispatcher.forward(request,reseponse);
			
	}
		


}
