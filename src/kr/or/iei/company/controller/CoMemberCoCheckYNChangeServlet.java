package kr.or.iei.company.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.company.model.service.CoMemberService;
import kr.or.iei.company.model.service.CoMemberServiceImpl;
import kr.or.iei.company.model.vo.Company;

/**
 * Servlet implementation class CoMemberCoCheckYNChangeServlet
 */
@WebServlet("/co/CoMemberCoCheckYNChange.do")
public class CoMemberCoCheckYNChangeServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoMemberCoCheckYNChangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      int contractNo = Integer.parseInt(request.getParameter("contractNo"));
      char coCheckYN = request.getParameter("coCheckYN").charAt(0);
      String coId = ((Company)request.getSession().getAttribute("company")).getCoId();
      
      System.out.println(contractNo);
      System.out.println(coCheckYN);
      System.out.println(coId);
      
      if(coCheckYN =='N') {
         coCheckYN = 'Y';
      }else {
         coCheckYN = 'N';
      }
      
      CoMemberService coMService = new CoMemberServiceImpl();
      int result = coMService.coCheckYNChange(contractNo, coCheckYN, coId);
      
      
      
      RequestDispatcher view = request.getRequestDispatcher("/views/company/updateCoCheckYN.jsp");
      
      if(result>0) {
         
         request.setAttribute("result", true);
      }else {
         request.setAttribute("result", false);
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