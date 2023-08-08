package GolfCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GolfDao.GolfDAO;
import GolfDto.Teacher;

public class GolfTeacherCommand implements GolfCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		GolfDAO dao = new GolfDAO();
		
		List<Teacher> teacherList = dao.selectTeacher();
		
		request.setAttribute("list", teacherList);
	}
}
