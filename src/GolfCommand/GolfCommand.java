package GolfCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface GolfCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response);
}
