package VoteCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VoteDAO.VoteDao;
import VoteDTO.Member;

public class MemberList implements VoteCommand {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) {
      
      System.out.println("voteSearchCommand entry.."); //디버깅을 위한 코드

      VoteDao dao = new VoteDao();
      
      List<Member> dots = dao.MemberList();
       request.setAttribute("MemberList", dots);
      
      
   }
}