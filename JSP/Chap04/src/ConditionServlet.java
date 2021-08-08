

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConditionServlet
 */
@WebServlet("/ConditionServlet")
public class ConditionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConditionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");  //요청정보의 인코딩 
		response.setContentType("text/html; charset=utf-8"); //응답할 정보의 인코딩 
		
		PrintWriter out = response.getWriter();
		
		String method = request.getParameter("method");
		
		out.println("<html>");
		out.println("<body>");
		if(method == null){
			out.println("<h2> 선택 항목이 없습니다</h2>");
		}else if(method.equals("get")){
			out.println("<h2> get 방식이란 ~");
		}else if(method.equals("post")){
			out.println("<h2> post 방식이란 ~");
		}else{
			out.println("<h2> 요청된 항목을 알 수 없습니다.</h2>");
		}
		out.println("</body>");
		out.println("</html>");
		
	}

}
