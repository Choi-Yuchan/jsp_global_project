package VoteDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import VoteCommand.MemberList;
import VoteCommand.VoteCommand;
import VoteCommand.VoteList;
import VoteCommand.VoteMain;
import VoteCommand.VoteMember;
import VoteCommand.VoteResult;


@WebServlet("*.vote")
public class VoteController extends HttpServlet {

   private static final long serialVersionUID = 1L;

   public VoteController() {

   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      System.out.println("doGet() ..");
      actionDo(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      System.out.println("doPost() ..");
      actionDo(request, response);
   }

   private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      System.out.println("actionDo() ..");

      request.setCharacterEncoding("UTF-8");

      String viewPage = null;
      VoteCommand command = null;

      String uri = request.getRequestURI();
      String conPath = request.getContextPath();
      String comm = uri.substring(conPath.length());
      
      VoteDao vote = new VoteDao();
      String context = request.getContextPath();

      System.out.println("=================" + context);

      if (comm.equals("/main.vote")) {
         command = new VoteMain();
         command.execute(request, response);

         viewPage = "index_vote.jsp";
         
      } else if (comm.equals("/memberList.vote")) { //후보자 조회
         command = new MemberList();
         command.execute(request, response);

         viewPage = "memberList_vote.jsp";
         
      } else if (comm.equals("/voteMember.vote")) {
         command = new VoteMember();
         command.execute(request, response);

         viewPage = "voteMember.jsp";
         
      } else if (comm.equals("/voteList.vote")) {
         command = new VoteList();
         command.execute(request, response);

         viewPage = "voteList.jsp";
         
      } else if (comm.equals("/voteResult.vote")) {
         command = new VoteResult();
         command.execute(request, response);

         viewPage = "voteResult.jsp";
         
      } else if (comm.equals("/vote.do")) {
         int result = vote.insertVote(request, response);
         response.setContentType("text/html; charset=UTF-8");
         PrintWriter out = response.getWriter();
         if(result == 1) {
            out.println("<script>");
            out.println("alert('투표하기 정보가 정상적으로 등록 되었습니다!'); location.href='"+context+"'; ");
            out.println("</script>");
            out.close();
         } else {
            out.println("<script>");
            out.println("alert('등록실패!'); location.href='"+context+"'; ");
            out.println("</script>");
            out.close();
         }      
         
      }

      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
      dispatcher.forward(request, response);

   }

}