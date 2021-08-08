

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MultipleParamServlet
 */
@WebServlet("/MultipleParamServlet")
public class MultipleParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MultipleParamServlet() {
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
		
		PrintWriter out = response.getWriter();
		String[] hobby = request.getParameterValues("hobby");
		//getParameter : 단일값
		//getParameterValues : 다중값
		
		out.println("<html>");
		out.println("<body>");
		
		if(hobby == null){
			out.println("[선택한 취미가 없습니다.]");
		}else{
			out.println("<table border=\"1\">");
			for(int i=0; i<hobby.length; i++){
				out.println("<tr>");
				out.println("	<td>");
				out.println(hobby[i]);
				out.println("	</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		}
		out.println("</body>");
		out.println("</html>");
		
	}

}
