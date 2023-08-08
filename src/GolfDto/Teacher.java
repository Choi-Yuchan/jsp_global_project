package GolfDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Teacher {
	
	String t_code;
	String t_name;
	String c_name;
	String c_fee;
	String t_date;
	
	public String getT_code() {
		return t_code;
	}
	
	public void setT_code(String t_code) {
		this.t_code = t_code;
	}
	
	public String getT_name() {
		return t_name;
	}
	
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	public String getC_fee() {
		return c_fee;
	}
	
	public void setC_fee(String c_fee) {
		this.c_fee = c_fee;
	}
	
	public String getT_date() {
		return t_date;
	}
	
	public void setT_date(String t_date) {
		this.t_date = t_date;
	}

	public static String selectTeacher(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
}
