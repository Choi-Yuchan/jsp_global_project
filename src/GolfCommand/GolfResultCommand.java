package GolfCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import GolfDto.Result;
import GolfDao.GolfDAO;
import java.util.List;

public class GolfResultCommand implements GolfCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	    // DAO 객체 생성
	    GolfDAO golfDAO = new GolfDAO();
	    
	    // 강사 매출 현황 조회
	    List<Result> result = golfDAO.selectResult();

	    // 조회 결과를 request 속성에 저장
	    request.setAttribute("resultList", result);
	}
}