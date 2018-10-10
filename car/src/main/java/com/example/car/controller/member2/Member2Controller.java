package com.example.car.controller.member2;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.car.model.member2.dto.Member2DTO;
import com.example.car.service.member2.Member2Service;

@Controller //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙트占싼뤄옙 占쏙옙占쏙옙占쏙옙 占쏙옙占�
public class Member2Controller {

	//MemberService 占싸쏙옙占싹쏙옙占쏙옙 占쏙옙占쌉쏙옙킴
	@Inject
	Member2Service member2Service;
	
	@RequestMapping("member2/list.do") //url mapping
	public String memberList(Model model) {
		List<Member2DTO> list=member2Service.memberList();
		model.addAttribute("list", list);
		// WEB-INF/views/member/member_list.jsp 占쏙옙占쏙옙占쏙옙
		return "member2/member_list";
	}//memberList()
	
	@RequestMapping("member2/write.do") //url mapping
	public String write() {
		//WEB-INF/views/member/write.jsp占쏙옙 占쏙옙占쏙옙占쏙옙
		return "member2/write";
	}//write()
	
	@RequestMapping("member2/insert.do")
	public String insert(@ModelAttribute Member2DTO dto) {
		member2Service.insertMember(dto);
		return "redirect:/member/login.do";
	}//insert()
	
	//@RequestParam : request.getParameter("占쏙옙占쏙옙占쏙옙") 占쏙옙체
	@RequestMapping("member2/view.do")
	public String view(@RequestParam String userid, Model model) {
		//占쏜델울옙 占쌘뤄옙 占쏙옙占쏙옙
		model.addAttribute("dto", member2Service.viewMember(userid));
		// view.jsp占쏙옙 占쏙옙占쏙옙占쏙옙
		return "member2/view";
	}//view()
	
	@RequestMapping("member2/update.do")
	public String update(Member2DTO dto, Model model) {
		//占쏙옙橘占싫� 체크
		boolean result=
				member2Service.checkPw(dto.getUserid(), dto.getPasswd());
		if(result) {//占쏙옙橘占싫ｏ옙占� 占쏙옙占쏙옙占쏙옙
			//회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
			member2Service.updateMember(dto);
			//占쏙옙占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙占� 占싱듸옙
			return "redirect:/member2/list.do";
		}else {//占쏙옙橘占싫ｏ옙占� 틀占쏙옙占쏙옙
			model.addAttribute("dto", dto);
			model.addAttribute("join_date", 
					member2Service.viewMember(dto.getUserid()).getJoin_date());
			model.addAttribute("message", "실패.");
			return "member2/view"; //forward
		}
	}//update()
	
	@RequestMapping("member2/delete.do")
	public String delete(String userid, String passwd, Model model) {
		boolean result=member2Service.checkPw(userid, passwd);
		if(result) {//占쏙옙占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 => 占쏙옙占쏙옙占쏙옙占� 占싱듸옙
			member2Service.deleteMember(userid);
			return "redirect:/member2/list.do";
		}else {//占쏙옙占쏙옙占� 틀占쏙옙占쏙옙 占실듸옙占싣곤옙
			model.addAttribute("message", "비밀번호 입력바람.");
			model.addAttribute(
					"dto", member2Service.viewMember(userid));
			return "member2/view";
		}
	}//delete()

	
	
	
}
