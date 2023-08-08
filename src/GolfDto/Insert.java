package GolfDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Insert {
	
	String m_date;
	String m_num;
	String m_name;
	String c_name;
	String c_area;
	String total_fee;

	
	public String getM_date() {
		return m_date;
	}
	
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	
	public String getM_num() {
		return m_num;
	}
	
	public void setM_num(String m_num) {
		this.m_num = m_num;
	}
	
	public String getM_name() {
		return m_name;
	}
	
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	public String getC_area() {
		return c_area;
	}
	
	public void setC_area(String c_area) {
		this.c_area = c_area;
	}
	
	public String getTotal_fee() {
		return total_fee;
	}
	
	public void setTotal_fee(String total_fee) {
		this.total_fee = total_fee;
	}
	
	public static String selectMember(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	public static int insertGolf(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setT_code(String parameter) {
		// TODO Auto-generated method stub
		
	}

	public String getT_code() {
		// TODO Auto-generated method stub
		return null;
	}
}
