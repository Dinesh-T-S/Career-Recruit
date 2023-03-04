package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.ApplyDAO;
import com.entity.Apply;
import com.entity.User;

@WebServlet("/apply")
public class ApplyServlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String name = req.getParameter("name");
			String qua = req.getParameter("qua");
			String email = req.getParameter("email");
			String mark = req.getParameter("mark");
			String skills = req.getParameter("skills");
			String city = req.getParameter("city");
			String university = req.getParameter("university");
			String cgpa = req.getParameter("cgpa");
			String interest = req.getParameter("interest");
			String phonenumber = req.getParameter("phonenumber");
			String company = req.getParameter("company");
			String project = req.getParameter("project");

			

			
			ApplyDAO dao = new ApplyDAO(DBConnect.getConn());
			
			Apply a = new Apply(name,qua,email,mark,skills,city,university,cgpa,interest,phonenumber,company,project);
			boolean f = dao.addApply(a);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg","Applied Successfully");
				resp.sendRedirect("apply.jsp");
			}
			else {
				session.setAttribute("succMsg","Something wrong on server");
				resp.sendRedirect("apply.jsp");
			}
			

		
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}