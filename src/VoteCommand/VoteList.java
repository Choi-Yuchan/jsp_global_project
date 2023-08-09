package VoteCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VoteDAO.VoteDao;
import VoteDTO.Vote;


public class VoteList implements VoteCommand {

	@Override
   public void execute(HttpServletRequest request, HttpServletResponse response) {
	   
      VoteDao dao = new VoteDao();
      
      List<Vote> dots = dao.VoteList();
      request.setAttribute("VoteList", dots);
     
   }
   
}