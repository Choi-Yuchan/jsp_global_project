package GolfDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Result {
	
	String t_code;
	String c_name;	
	String t_name;
	String total_fee;
	String c_fee;  // 추가된 부분
	
	public String getC_fee() {
		return c_fee;
	}

	public void setC_fee(String c_fee) {
		this.c_fee = c_fee;
	}

	public String getT_code() {
		return t_code;
	}
	
	public void setT_code(String t_code) {
		this.t_code = t_code;
	}
	
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	public String getT_name() {
		return t_name;
	}
	
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	
	public String getTotal_fee() {
		return total_fee;
	}
	
	public void setTotal_fee(String total_fee) {
		this.total_fee = total_fee;
	}

	public static String selectResult(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
}
