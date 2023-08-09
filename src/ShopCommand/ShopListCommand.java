package ShopCommand;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ShopDao.ShopDaoSales;
import ShopDto.ShopDto;


public class ShopListCommand implements ShopCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ShopDaoSales boardDao = new ShopDaoSales();
		
		List<ShopDto> dtos = boardDao.list();
		
		request.setAttribute("list", dtos);
	
	}

}
