package kr.or.iei.company.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.company.model.service.CompanyInfoService;
import kr.or.iei.company.model.service.CompanyInfoServiceImpl;
import kr.or.iei.company.model.vo.Company;

/**
 * Servlet implementation class CoSearchCompanyInfoServlet
 */
@WebServlet("/co/coSearchCompanyInfo.do")
public class CoSearchCompanyInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoSearchCompanyInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String coId =((Company)request.getSession().getAttribute("company")).getCoId();
		
		CompanyInfoService ciService = new CompanyInfoServiceImpl();
		Company co = ciService.SearchCompanyInfo(coId);
		
		
		RequestDispatcher view;
		if(co != null) {
			view = request.getRequestDispatcher("/views/company/companyProfileUpdate.jsp");
			request.setAttribute("Company", co);
			
		}else {
			
			 view = request.getRequestDispatcher("/views/company/companyProfileInsert.jsp");
		}
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
