package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException{
		
		try {
			
			String uemail = req.getParameter("username");
			String upwd = req.getParameter("password");
			User u = new User();
			
			HttpSession session = req.getSession();
			
			if("admin@gmail.com".equals(uemail) && "admin@123".equals(upwd)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}else {
				
				UserDAO dao = new UserDAO(DBConnect.getConn());
				User user = dao.login(uemail, upwd);
				
				if(user != null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("succMsg", "Invalid Email or Password");
					resp.sendRedirect("login.jsp");
				}
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
