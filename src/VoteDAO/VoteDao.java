package VoteDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import VoteDTO.Member;
import VoteDTO.Result;
import VoteDTO.Vote;

public class VoteDao {
	private DataSource datasource = null;

	public VoteDao() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 투표 검수 조회
	public List<Vote> VoteList() {
  
		ArrayList<Vote> list = new ArrayList<>();

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			// 투표검수조회 화면 쿼리
			String sql = "select v_name," + " '19'||substr(v_jumin,1,2)||" + " '년'||substr(v_jumin,3,2)||"
					+ " '월'||substr(v_jumin,5,2)||" + " '일생' v_jumin,"
					+ " '만 '||(to_number(to_char(sysdate,'yyyy'))"
					+ " - to_number('19'||substr(v_jumin,1,2)))||'세' v_age,"
					+ " DECODE(substr(v_jumin,7,1),'1','남','여') v_gender, " + " m_no, "
					+ " substr(v_time,1,2)||':'||substr(v_time,3,2) v_time, "
					+ " DECODE(v_confirm,'Y','확인','미확인') v_confirm " + " FROM tbl_vote_202005 "
					+ " WHERE v_area='제1투표장'";

			con = datasource.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				Vote vote = new Vote();

				vote.setV_name(rs.getString(1));
				vote.setV_jumin(rs.getString(2));
				vote.setV_age(rs.getString(3));
				vote.setV_gender(rs.getString(4));
				vote.setM_no(rs.getString(5));
				vote.setV_time(rs.getString(6));
				vote.setV_confirm(rs.getString(7));

				list.add(vote);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}

		}
		return list;
	}

	// 투표 결과 조회
	public List<Result> VoteResult() {

		ArrayList<Result> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {

			// 후보자 등수 화면 쿼리
			String sql = "select \r\n" + " M.m_no, M.m_name, count(*) AS v_total\r\n"
					+ " FROM tbl_member_202005 M, tbl_vote_202005 V\r\n"
					+ " WHERE M.m_no = V.m_no AND V.v_confirm = 'Y' \r\n" + " GROUP BY M.m_no, M.m_name\r\n"
					+ " ORDER BY v_total DESC";

			con = datasource.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {

				Result result = new Result();

				result.setM_no(rs.getString(1));
				result.setM_name(rs.getString(2));
				result.setV_total(rs.getString(3));

				list.add(result);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}

		}
		return list;
	}

	// 투표 후보 조회
	public List<Member> MemberList() {

		ArrayList<Member> list = new ArrayList<>();

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			// 후보 조회 화면 쿼리
			String sql = "SELECT " + " M.m_no, " + " M.m_name, " + " P.p_name, "
					+ " DECODE(M.p_school,'1','고졸','2','학사','3','석사','박사') p_school, " + " substr(M.m_jumin,1,6)|| "
					+ " '-'||substr(M.m_jumin,7) m_jumin, " + " M.m_city, "
					+ " substr(P.p_tel1,1,2)||'-'||P.p_tel2||'-'||" + " (substr(P.p_tel3,4)||"
					+ "  substr(P.p_tel3,4)||" + "  substr(P.p_tel3,4)||" + "  substr(P.p_tel3,4)) p_tel "
					+ " FROM tbl_member_202005 M, tbl_party_202005 P " + " WHERE M.p_code = P.p_code";

			con = datasource.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {

				Member member = new Member();

				member.setM_no(rs.getString(1));
				member.setM_name(rs.getString(2));
				member.setP_name(rs.getString(3));
				member.setP_school(rs.getString(4));
				member.setM_jumin(rs.getString(5));
				member.setM_city(rs.getString(6));
				member.setP_tel(rs.getString(7));

				list.add(member);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}

		}
		return list;
	}

	public int insertVote(HttpServletRequest request, HttpServletResponse response) {

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int result = 0;
		try {

			String v_jumin = request.getParameter("v_jumin");
			String v_name = request.getParameter("v_name");
			String m_no = request.getParameter("m_no");
			String v_time = request.getParameter("v_time");
			String v_area = request.getParameter("v_area");
			String v_confirm = request.getParameter("v_confirm");

			String query = "INSERT INTO tbl_vote_2023 VALUES(?,?,?,?,?,?)";

			con = datasource.getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, v_jumin);
			stmt.setString(2, v_name);
			stmt.setString(3, m_no);
			stmt.setString(4, v_time);
			stmt.setString(5, v_area);
			stmt.setString(6, v_confirm);

			result = stmt.executeUpdate(); // 0실패, 1성공
			System.out.println(result);
			con.close();
			stmt.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return result;
	}

}