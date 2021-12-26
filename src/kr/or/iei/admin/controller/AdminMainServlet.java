package kr.or.iei.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.admin.model.service.AdminService;
import kr.or.iei.admin.model.service.AdminServiceImpl;
import kr.or.iei.admin.model.vo.Admin;

/**
 * Servlet implementation class AdminMainServlet
 */
@WebServlet("/admin/adminHome.do")
public class AdminMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		AdminService adService = new AdminServiceImpl();
		
		String siteName = request.getParameter("siteName");
		String siteUrl = request.getParameter("siteUrl");
		String busNum = request.getParameter("busNum");
		String address = request.getParameter("address");
		/*
		System.out.println(siteName);
		System.out.println(siteUrl);
		System.out.println(busNum);
		System.out.println(address);
		*/
		
		RequestDispatcher view = request.getRequestDispatcher("/views/admin/adminMain.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
