package GolfDao;


import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import GolfDto.Insert;
import GolfDto.Member;
import GolfDto.Result;
import GolfDto.Teacher;

public class GolfDAO {
	DataSource datasource=null;
	
	public GolfDAO() {
		try {
			Context ctx = new InitialContext();
			datasource = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
//	
//	public static Connection getConnection() throws Exception {
//		Class.forName("oracle.jdbc.OracleDriver");
//		Connection con = DriverManager.getConnection
//				("jdbc:oracle:thin:@//localhost:1521/xe","scott","tiger");
//		return con;
//	}
    
	
	public int insert(HttpServletRequest request, HttpServletResponse response, Insert insert) {
	    Connection conn = null;
	    PreparedStatement ps = null;
	    int result = 0;
	   
	    System.out.println("insert..");
	    try {
	        conn = datasource.getConnection();
	        
	        String sql = "INSERT INTO TBL_CLASS_202201 (m_date, m_num, c_area, total_fee, t_code) VALUES (?, ?, ?, ?, ?)";
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, insert.getM_date());
//	        ps.setString(2, insert.getM_name());
	        ps.setString(2, insert.getM_num());
	        ps.setString(3, insert.getC_area());
	        ps.setInt(4, Integer.parseInt(insert.getTotal_fee()));
	        ps.setString(5, insert.getT_code());
	        
	        result = ps.executeUpdate(); // 0: 실패, 1: 성공
	        System.out.println(result);
	        conn.close();
	        ps.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return result;
	}
	
	
	public List<Teacher> selectTeacher() {
	  	
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;	 
		ArrayList<Teacher> list = new ArrayList<Teacher>();
			
		try {
			conn = datasource.getConnection();
			
			//강사 조회 화면 쿼리
            String sql = "SELECT " +
                    "t_code, " +
                    "t_name, " +
                    "c_name, " +
                    "('₩' || TO_CHAR(c_fee,'fm999,999,999')) c_fee, " +
                    "(SUBSTR(t_date,0,4) " +
                    "|| '년' " +
                    "|| SUBSTR(t_date,5,2) " +
                    "|| '월' " +
                    "|| SUBSTR(t_date,7,2) " +
                    "|| '일' ) t_date " +
                    "FROM tbl_teacher_202201";
				 ps = conn.prepareStatement(sql);
				 rs = ps.executeQuery();
				 
			while(rs.next()) {
				Teacher teacher = new Teacher();
				teacher.setT_code(rs.getString("t_code"));
				teacher.setT_name(rs.getString("t_name"));
				teacher.setC_name(rs.getString("c_name"));
				teacher.setC_fee(rs.getString("c_fee"));
				teacher.setT_date(rs.getString("t_date"));
				
				list.add(teacher);
			}
			
				conn.close();
				ps.close();
				rs.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}	
		return list;
	}
	
	public List<Member> selectMember(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;	
		ArrayList<Member> list = new ArrayList<Member>();	
		try {
		conn = datasource.getConnection();
				
			//회원정보 조회  화면 쿼리
		String sql = "SELECT " +
	       		"(SUBSTR(C.m_date,0,4) " +
	       		"|| '년' " +
	       		"|| SUBSTR(C.m_date,5,2) " + 
	       		"|| '월' ) m_date, " +
	       		"C.m_num, " +
	       		"M.m_name, " + 
	       		"T.c_name, " + 
	       		"C.c_area, " + 
	       		"('₩' || TO_CHAR(t.c_fee,'fm999,999,999')) c_fee, " +
				"M.grade " + 
				"FROM TBL_TEACHER_202201 T, TBL_MEMBER_202201 M, TBL_CLASS_202201 C " + 
				"WHERE C.m_num = M.m_num " +
				"AND C.t_code = T.t_code";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
			
		while(rs.next()) {
			Member member = new Member();
				
			member.setM_date(rs.getString(1));
			member.setM_num(rs.getString(2));
			member.setM_name(rs.getString(3));
			member.setC_name(rs.getString(4));
			member.setC_area(rs.getString(5));
			member.setTotal_fee(rs.getString(6));
			member.setGrade(rs.getString(7));
			
			list.add(member);
		}
		
		conn.close();
		ps.close();
		rs.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}	
		return list;
	}
	
	public List<Result> selectResult() {
	    ArrayList<Result> list = new ArrayList<Result>();
	    Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    try {
	        conn = datasource.getConnection();
	        //강사매출현황 구현 
	        String sql = "SELECT " +
	                "C.t_code , " +
	                "T.c_name , " +
	                "T.t_name , " +
	                "('₩' || TO_CHAR(SUM(C.total_fee),'fm999,999,999')) total " +
	                "FROM TBL_CLASS_202201 C, TBL_TEACHER_202201 T " +
	                "WHERE C.t_code = T.t_code " +
	                "GROUP BY(C.t_code, T.c_name, T.t_name) " +
	                "ORDER BY C.t_code";

	        ps = conn.prepareStatement(sql);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            Result result = new Result();

	            result.setT_code(rs.getString(1));
	            result.setC_name(rs.getString(2));
	            result.setT_name(rs.getString(3));
	            result.setTotal_fee(rs.getString(4));
	            list.add(result);
	        }
	        return list; // 리스트를 리턴
	    } catch (SQLException e) {
	        e.printStackTrace(); // 예외 처리 로직 추가
	    } finally {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            if (ps != null) {
	                ps.close();
	            }
	            if (conn != null) {
	                conn.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); // 리소스 해제 예외 처리
	        }
	    }
	    
	    return null; // 예외 시 null 리턴
	}


	public int insertGolf(HttpServletRequest request, HttpServletResponse response, Insert insert) {
		// TODO Auto-generated method stub
		return 0;
	}

}

