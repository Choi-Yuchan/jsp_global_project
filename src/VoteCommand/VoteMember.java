package VoteCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VoteDAO.VoteDao;

public class VoteMember implements VoteCommand {

	   @Override
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
	      int result = new VoteDao().insertVote(request, response);
	         request.setAttribute("votemember", result);
	   }
	}