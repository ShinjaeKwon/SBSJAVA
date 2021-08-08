

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
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
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		

		PrintWriter out = response.getWriter();
		String name = request.getParameter("name"); 
		String sex = request.getParameter("sex"); 
		String id = request.getParameter("id"); 
		String pwd = request.getParameter("pwd"); 
		String definepwd = request.getParameter("definepwd"); 
		String address = request.getParameter("address"); 
		String phone = request.getParameter("phone"); 
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>작성하신 내용은 다음과 같습니다.</h2><br/>");
		out.println("이름 : "+name);
		out.println("<hr>");
		out.println("성별 : "+sex);
		out.println("<hr>");
		out.println("아이디 : "+id);
		out.println("<hr>");
		out.println("주소 : "+address);
		out.println("<hr>");
		out.println("이메일 주소 : "+email);
		out.println("<hr>");
		out.println("<table border=\"1\">");
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
