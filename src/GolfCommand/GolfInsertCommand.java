package GolfCommand;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GolfDao.GolfDAO;
import GolfDto.Insert;

public class GolfInsertCommand implements GolfCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        GolfDAO dao = new GolfDAO();

        // request에서 수강 신청 관련 데이터를 가져와서 DTO에 설정
        Insert insert = new Insert();
        insert.setM_date(request.getParameter("m_date"));
        insert.setM_name(request.getParameter("m_name"));
        insert.setM_num(request.getParameter("m_num"));
        insert.setC_area(request.getParameter("c_area"));
        insert.setTotal_fee(request.getParameter("total_fee"));
        insert.setT_code(request.getParameter("t_code"));

        dao.insert(request, response, insert);

    }

}