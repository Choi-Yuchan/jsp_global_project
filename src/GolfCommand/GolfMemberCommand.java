package GolfCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GolfDao.GolfDAO;
import GolfDto.Insert;
import GolfDto.Member;

public class GolfMemberCommand implements GolfCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        GolfDAO dao = new GolfDAO();
        // 정보조회
        List<Member> memberList = dao.selectMember();

        request.setAttribute("memberList", memberList);

        request.setAttribute("memberListSize", memberList.size());

        // 수강신청 데이터 생성 및 추가
        Insert insert = new Insert();
        insert.setM_date(request.getParameter("m_date"));
        insert.setM_name(request.getParameter("m_name"));
        insert.setM_num(request.getParameter("m_num"));
        insert.setC_area(request.getParameter("c_area"));
        insert.setTotal_fee(request.getParameter("total_fee"));
        insert.setT_code(request.getParameter("t_code"));

        int result = dao.insertGolf(request, response, insert);

        // 회원 정보 추가 성공 시에만 조회 수행
        if (result == 1) {
            // 새로 추가된 회원 정보 조회
            GolfMemberCommand memberCommand = new GolfMemberCommand();
            memberCommand.execute(request, response);
        }

        // 수강신청 결과 메시지 출력 처리
        handleInsertResult(response, result);
    }

    private void handleInsertResult(HttpServletResponse response, int result) {
        // TODO: 수강신청 결과 메시지 처리
    }
}
