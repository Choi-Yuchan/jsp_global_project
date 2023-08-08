package GolfDao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GolfCommand.GolfCommand;
import GolfCommand.GolfInsertCommand;
import GolfCommand.GolfMemberCommand;
import GolfCommand.GolfResultCommand;
import GolfCommand.GolfTeacherCommand;
import GolfDto.Insert;
import GolfDto.Member;
import GolfDto.Result;
import GolfDto.Teacher;

@WebServlet("*.do")
public class GolfController extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		requestPro(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		requestPro(request, response);
	}
	
	protected void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* URL check */
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String command = uri.substring(context.length());
		String site = null;

		System.out.println("command : "+command);
		
		GolfDAO golf = new GolfDAO();
		GolfCommand golfCommand = null;
		switch(command) {
		case "/main.do" : 
			
			site = "index_golf.jsp";
			break;
		case "/teacher_golf.do" : 
			golfCommand = new GolfTeacherCommand();
			golfCommand.execute(request, response);
			
			site = "teacher_golf.jsp";
			break;
		case "/insert_golf.do":
			site = "insert_golf.jsp";
			break;
		case "/insert.do" : 
			golfCommand = new GolfInsertCommand();
			
			int result = Insert.insertGolf(request, response);
			response.setContentType("text/html; charset=UTF-8");

			
			PrintWriter out=response.getWriter();
			if(result == 1) {
				out.println("<script>");
				out.println("alert('수강신청성공!'); location.href='"+context+"'; ");
				out.println("</script>");
				out.flush();
			}else {
				out.println("<script>");
				out.println("alert('실패!'); location.href='"+context+"'; ");
				out.println("</script>");
				out.flush();
			}
			break;
		case "/member_golf.do" : 
			golfCommand = new GolfMemberCommand();
			golfCommand.execute(request, response);
			
			site = "member_golf.jsp";
			break;
			
		case "/result_golf.do" : 
		    golfCommand = new GolfResultCommand();
		    golfCommand.execute(request, response);
		    
		    site = "result_golf.jsp";
		    break;
		default :
			site = "/main.do";
			break;
		}
		/* 결과 */
		RequestDispatcher dispatcher = request.getRequestDispatcher(site);
		dispatcher.forward(request, response);
	}
}