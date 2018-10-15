package member;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member_servlet/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//사용자가 요청한 주소
		//URL은 스트링버퍼이기에 toString()으로 한번 더 변환
		//String url=request.getRequestURL().toString();
		String uri=request.getRequestURI();
		//컨택스트 패스(웹프로젝트의 식별자)/jsp02/
		String context=request.getContextPath();

		MemberDAO dao=new MemberDAO();

		//A.indexOf(B) A의 내용 중에서 B가 포함된 인덱스값
		//요청된 uri중에서 list.do라는 문자열이 +인덱스값을 갖고 있다면
		//ex)jsp02/member_servlet/list.do 로 요청
		if(uri.indexOf("list.do") != -1) {
			System.out.println("list.do호출...");
			System.out.println(request.getRequestURI());
			System.out.println(uri.indexOf("list.do"));

			//HashMap 생성
			Map<String,Object> map=new HashMap<>();
			//dao의 memberList()호출 후 리턴받은 값을 list에 저장
			List<MemberDTO> list=dao.memberList();
			//DAO의 ArrayList에 담은 값들을 Map에 자료 저장
			map.put("list", list);//put("key", value);
			//ArrayList에 담겨진 레코드의 갯수를 저장
			map.put("count", list.size());//put("key", value);

			//최종적으로 map에 담긴값을 setAttribute에 저장 
			request.setAttribute("map", map);//key,value
			//출력을 위해 포워딩할 uri지정
			//String page="/ch06/member_list.jsp";
			String page="/ch07/member_list.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);//포워딩
		}else if(uri.indexOf("join.do") != -1){//회원등록
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
	
			MemberDTO dto=new MemberDTO();//MemberDTO 생성
			dto.setUserid(userid);//dto의 setter를 통한 자료저장
			dto.setPasswd(passwd);
			dto.setName(name);
	
			dao.insert(dto);//dao의 insert()호출
	
	


		}else if(uri.indexOf("sessionLogin.do") != -1){//세션로그인 처리
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			MemberDTO dto=new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result=dao.loginCheck(dto);
			System.out.println(result);
			String page="/ch07/session_login.jsp";
			if(!result.equals("로그인 실패")){//로그인 성공
				//세션 객체 생성
				HttpSession session=request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("message", result);
				page="/ch07/main.jsp";
				response.sendRedirect(request.getContextPath()+page);
			}else{//로그인 실패
				response.sendRedirect(
						request.getContextPath()+page+"?message=error");
			}
		}else if(uri.indexOf("sessionLogout.do") != -1){//세션로그아웃 처리
			//세션객체 생성
			HttpSession session = request.getSession();
			//세션을 비움(초기화시킴)
			session.invalidate();
			//로그인 페이지로 이동
			String page=request.getContextPath()
					+"/ch07/session_login.jsp?message=logout";
			response.sendRedirect(page);
		}
	}

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}