package GolfCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GolfDao.GolfDAO;
import GolfDto.Member;

public class GolfMemberCommand implements GolfCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        GolfDAO dao = new GolfDAO();

        List<Member> memberList = dao.selectMember();

        request.setAttribute("memberList", memberList);
    }
}