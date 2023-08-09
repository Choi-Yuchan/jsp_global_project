package ShopCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ShopDao.ShopDao;
import ShopDto.ShopDto;


public class ListCommand implements ShopCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ShopDao dao = new ShopDao();
		List<ShopDto> list = dao.list();
		
		request.setAttribute("list", list);
		
	}

}
