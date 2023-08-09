package VoteCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VoteDAO.VoteDao;
import VoteDTO.Result;

public class VoteResult implements VoteCommand {
	
   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) {
      
      VoteDao dao = new VoteDao();
      
      List<Result> dtos = dao.VoteResult();
      request.setAttribute("voteResult", dtos);
   }
}