

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoopServlet
 */
@WebServlet("/LoopServlet")
public class LoopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoopServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		//HTTP 요청에 함께 사용되는 파라미터 값은 숫자처럼 보여도 데이터 타입은 문자열
		PrintWriter out = response.getWriter();
		int num = Integer.parseInt(request.getParameter("num")); //name =num의 value가져옴 
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>"+num+"단출력</h2>");
		out.println("<table border=\"1\">");
		out.println("	<tr><th>계산</th><th>결과</th></tr>");
		for(int i=1; i<=9; i++){
			out.println("<tr>");
			out.println("	<td>");
			out.println(		num+" X "+i);
			out.println("	</td>");
			out.println("	<td>");
			out.println(		num * i);
			out.println("	</td>");
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
