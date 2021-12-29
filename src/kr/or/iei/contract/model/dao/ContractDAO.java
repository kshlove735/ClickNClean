package kr.or.iei.contract.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.company.model.vo.Company;
import kr.or.iei.contract.model.vo.Contract;

public class ContractDAO {


	public ArrayList<Contract> memberChoice(int currentPage, Connection conn, int recordCountPerPage, String userId) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Contract> list = new ArrayList<Contract>();
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage-1);
		int end =  currentPage * recordCountPerPage;
		
		String query = "select * " + 
						" from(select row_number()over(order by condition.conditionNo desc)as num, condition.* " + 
						" from condition " + 
						" left join contract on(condition.userId=contract.userId) " + 
						" where condition.userId=? ) " + 
						" where num between ? and ?";
		
		
		
			try {
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, userId);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);

				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					
					Contract cd = new Contract();
					
					cd.setConditionNo(rset.getString("conditionNo"));
					cd.setUserId(rset.getString("userId"));
					cd.setCleanType(rset.getString("cleanType"));
					cd.setHouseType(rset.getString("houseType"));
					cd.setArea(rset.getString("area"));
					cd.setHouseSize(rset.getInt("houseSize"));
					cd.setReqDate(rset.getDate("reqDate"));
					
					list.add(cd);
					
				}
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			return list;
			
	}	
			
			
	   public String getPageNavi(int naviCountPerPage, Connection conn, int currentPage, int recordCountPerPage, String userId) {

           
	         int recordtotalCount = totalCount(conn, userId); //전체 글 개수
	            
	         int pageTotalCount = 0; //전체 페이지 개수
	            
	         pageTotalCount = (int)Math.ceil(recordtotalCount / (double)recordCountPerPage);
	            
	         int startNavi = (((currentPage - 1) / naviCountPerPage) * naviCountPerPage) +1;
	         int endNavi = startNavi + (naviCountPerPage - 1);
	            
	            
	         if(endNavi > pageTotalCount) {
	            
	            endNavi = pageTotalCount;
	         }
	         
	            StringBuilder sb = new StringBuilder();
	            
	            if(startNavi!=1) {
	               sb.append("<a href='/member/memberCheck.do?currentPage="+(startNavi-1)+"'> 이전  </a> ");
	            }
	            
	            for(int i=startNavi; i<=endNavi;i++ ) {
	               
	               if(i==currentPage) {
	                  sb.append("<a href='/member/memberCheck.do?currentPage="+i+"'><B style='font-size:1.2em'>"+i+"</B></a> ");
	            
	               }else {
	                  sb.append("<a href='/member/memberCheck.do?currentPage="+i+"'>"+i+"</a> ");
	               }
	            }
	            
	            if(endNavi!=pageTotalCount) {
	               sb.append("<a href='/member/memberCheck.do?currentPage="+(endNavi+1)+"'> 다음 </a> ");
	            }
	            
	            return sb.toString();
	         }
	         
	      public int totalCount(Connection conn, String userId) {
	            
	         PreparedStatement pstmt = null;
	         ResultSet rset = null;
	            
	         int count = 0;
	         String query = "select count(*) as count from condition where userId=?";
	            
	         
	         try {
	            pstmt = conn.prepareStatement(query);
	            
	            pstmt.setString(1, userId);
	            
	            rset = pstmt.executeQuery();
	            
	            if(rset.next()) {
	                  
	               count = rset.getInt("count");
	            }
	            
	         } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }finally {
	            JDBCTemplate.close(rset);
	            JDBCTemplate.close(pstmt);
	         }
	         return count;
	         }
			

	public ArrayList<Company> selectConditionCompany(String area, String cleanType, Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Company> list=new ArrayList<Company>();
		
		String query="select company.*,companyinfo.* from company left join companyinfo on (company.coid=companyinfo.coid) where end_yn='N' and"
				+ " cleanType like ? and area like ?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, "%"+cleanType+"%");
			pstmt.setString(2, "%"+area+"%");
			rset=pstmt.executeQuery();
			while(rset.next()) {
				Company com=new Company();
				com.setCoNo(rset.getInt("cono"));
				com.setCoId(rset.getString("CoId"));
				com.setCoPwd(rset.getString("CoPwd"));
				com.setCoName(rset.getString("CoName"));
				com.setPhone(rset.getString("Phone"));
				com.setCeoName(rset.getString("CeoName"));
				com.setEmail(rset.getString("Email"));
				com.setBusNum(rset.getString("BusNum"));
				com.setAddress(rset.getString("Address"));
				com.setTeam(rset.getInt("Team"));
				com.setCareer(rset.getInt("Career"));
				com.setGrade(rset.getString("Grade"));
				com.setEnrollDate(rset.getDate("EnrollDate"));
				com.setSign_YN(rset.getString("Sign_YN").charAt(0));
				com.setEnd_YN(rset.getString("End_YN").charAt(0));
				com.setLogo(rset.getString("Logo"));
				com.setCoInfo(rset.getString("CoInfo"));
				com.setMeetHour(rset.getString("MeetHour"));
				com.setWorkHour(rset.getString("WorkHour"));
				com.setArea(rset.getString("Area"));
				com.setCleanType(rset.getString("cleanType"));
				com.setTel(rset.getString("tel"));
				com.setPrice(rset.getInt("Price"));
				list.add(com);
			}
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;

		
	}

	

	public int insertCondition(Contract con, Connection conn) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="insert into condition values(?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, con.getConditionNo());
			pstmt.setString(2, con.getUserId());
			pstmt.setString(3,con.getCleanType());
			pstmt.setString(4,con.getHouseType());
			pstmt.setString(5,con.getArea());
			pstmt.setInt(6,con.getHouseSize());
			pstmt.setDate(7,con.getReqDate());
			result=pstmt.executeUpdate();
			

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {

			JDBCTemplate.close(pstmt);
		}
		
		return result;

	}


	public boolean checkCondition(Contract con,Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		String query="select * from condition where userId=? and cleantype=? and housetype=? and area=?";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, con.getUserId());
			pstmt.setString(2, con.getCleanType());
			pstmt.setString(3, con.getHouseType());
			pstmt.setString(4, con.getArea());
			rset=pstmt.executeQuery();
			if(rset.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			
		}
		
		return false;
	}


	public int insertContract(String conditionNo, String userId, String coId, int price, Connection conn) {
		PreparedStatement pstmt=null;
		int result=0;
		String query="insert into contract values(contract_seq.nextval,?,?,?,?,'Y',sysdate,'N',sysdate,'N',sysdate,'N',sysdate)";
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, conditionNo);
			pstmt.setString(2, userId);
			pstmt.setString(3, coId);
			pstmt.setInt(4, price);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}


	public int updateContractYN(Connection conn, String userId, int contractNo) {

	      PreparedStatement pstmt = null;
	      int result = 0;
	      
	      String query = "update contract set contract_YN='Y',contractFinDate=sysdate where userid=? and contractNo=? ";
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         
	         pstmt.setString(1, userId);
	         pstmt.setInt(2, contractNo);
	         
	         result = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         JDBCTemplate.close(pstmt);
	      }
	      return result;
	      
	   }




}
