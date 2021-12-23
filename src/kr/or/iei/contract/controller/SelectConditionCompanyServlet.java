package kr.or.iei.contract.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.company.model.service.CompanyService;
import kr.or.iei.company.model.vo.Company;
import kr.or.iei.contract.model.service.ContractService;
import kr.or.iei.contract.model.service.ContractServiceImpl;
import kr.or.iei.contract.model.vo.Contract;

/**
 * Servlet implementation class SelectConditionCompanyServlet
 */
@WebServlet("/contract/selectConditionCompany.do")
public class SelectConditionCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectConditionCompanyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String cleanType=request.getParameter("cleanType");
		String houseType=request.getParameter("houseType");
		String houseSize=request.getParameter("houseSize");
		String area1=request.getParameter("area1");
		String area2=request.getParameter("area2");
		String cleanDate=request.getParameter("cleanDate");
		
		String area=area1+" "+area2;
		
		int size=Integer.parseInt(houseSize.substring(0, 2));
		System.out.println(size);
		ContractService conService=new ContractServiceImpl();
		ArrayList<Company> list= conService.selectConditionCompany(area,cleanType);
		Contract con=new Contract();
		//con.setCleanType(cleanType);
	//	con.setHouseType(houseType);
		//con.setHouseSize(houseSize);
	//setArea(area);
	//	con.setCleanDate(cleanDate);
		
		
		int result =conService.insertCondition(con);
		
		RequestDispatcher view=request.getRequestDispatcher("/views/contract/conditionCompany.jsp");
		request.setAttribute("list", list);
		request.setAttribute("cleanType", cleanType);
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
