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

        int result = dao.insertGolf(request, response, insert);

        // 수강신청 결과 메시지 출력 처리
        handleInsertResult(response, result);
    }

    private void handleInsertResult(HttpServletResponse response, int result) {
        String message;
        if (result == 1) {
            message = "수강신청이 정상적으로 등록되었습니다.";
        } else {
            message = "수강신청 등록에 실패했습니다. 다시 시도해주세요.";
        }

        try {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('" + message + "');");
            if (result == 1) {
                out.println("location.href='main.do';");
            } else {
                out.println("history.back();");
            }
            out.println("</script>");
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}