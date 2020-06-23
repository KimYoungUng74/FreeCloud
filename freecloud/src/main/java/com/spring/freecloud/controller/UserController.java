package com.spring.freecloud.controller;

import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService userSer;

	// xml에 설정된 리소스 참조
	// bean의 id가 uploadPath인 태그를 참조 파일업로드
	@Autowired
	@Resource(name = "uploadPath")
	String uploadPath;

	// 회원가입 화면
	@RequestMapping(value = "signup.do")
	public String signup(Locale locale, Model model) {
		return "signup";
	}

	// 회원 가입 처리
	@RequestMapping(value = "signupOk.do", method = RequestMethod.POST)
	public ModelAndView signupOk(Locale locale, UserDTO dto) {
		System.out.println("userName : " + dto.getUSER_NAME());
		if (1 == userSer.signupUser(dto)) {
			System.out.println("회원가입 되었음");
		} else {
			System.out.println("회원가입 실패");
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");

		return mav;
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	public @ResponseBody String AjaxView(@RequestParam("id") String id) {
		String str = "";
		boolean idcheck = userSer.checkId(id);
		if (idcheck) { // 이미 존재하는 계정
			str = "NO";
		} else { // 사용 가능한 계정
			str = "YES";
		}
		return str;
	}

	// 이메일 중복 체크
	@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
	public @ResponseBody String AjaxView2(@RequestParam("email") String email) {
		String str = "";
		boolean emailcheck = userSer.checkEmail(email);
		if (emailcheck) { // 이미 존재하는 계정
			str = "NO";
		} else { // 사용 가능한 계정
			str = "YES";
		}
		return str;
	}

	// 로그인 화면
	@RequestMapping(value = "login.do")
	public String login(Locale locale, Model model) {
		return "login";
	}

	// 로그인 처리
	@RequestMapping(value = "loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserDTO dto, HttpSession sessison, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		boolean result = userSer.loginCheck(dto, sessison);
		ModelAndView mav = new ModelAndView();

		if (result) { // 로그인 성공
			mav.setViewName("home");
			mav.addObject("msg", "success");
			System.out.println("로그인 성공");
		} else { // 로그인 실패
			// login.jsp로 이동
			mav.setViewName("login");
			mav.addObject("msg", "failure");
			System.out.println("로그인 실패");
		}
		return mav;
	}

	// 로그아웃
	@RequestMapping(value = "logout.do")
	public ModelAndView logOut(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		userSer.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg", "logout");
		return mav;
	}

	// 아이디 찾기
	@RequestMapping(value = "/seekId", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String seekid(@RequestParam("name") String name, @RequestParam("email") String email) {
		System.out.println("seekid에 접근함");

		String str = "";
		String idcheck = userSer.seekId(name, email);
		if (idcheck != "") { // 정보가 일치할 경우
			str = "찾으신 아이디는 \'" + idcheck + "\'입니다.";
		} else { // 가입된 회원이 아닐경우
			str = "가입된 정보가 없습니다 입력한 정보를 확인하세요";
		}

		return str;
	}

	// 아이디 찾기
	@RequestMapping(value = "/seekPw", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String seekpw(@RequestParam("id") String id, @RequestParam("name") String name,
			@RequestParam("email") String email) {
		System.out.println("seekpw에 접근함");
		String str = "";
		String pwcheck = userSer.seekPw(id, name, email);
		if (pwcheck == "dbError") { // 정보가 일치할 경우
			str = "DB오류가 발생했습니다 다시 시도해주세요";
		} else if (pwcheck == "notFound") { // 가입된 회원아 아닐경우
			str = "가입된 정보가 없습니다 입력한 정보를 확인하세요";
		} else {
			str = "임시비밀번호 : \'" + pwcheck + " \'로그인시 변경해주세요";
		}

		return str;
	}

	// 마이페이지
	@RequestMapping(value = "mypage.do")
	public String mypage(Locale locale, Model model) {
		return "mypage";
	}

	// 업로드 흐름 : 업로드 버튼클릭 => 임시디렉토리에 업로드=> 지정된 디렉토리에 저장 => 파일정보가 file에 저장
	@RequestMapping(value = "/upload/uploadForm", method = RequestMethod.GET)
	public void uplodaForm() {
		// upload/uploadForm.jsp(업로드 페이지)로 포워딩
	}

	// 외부저장소에서 이미지 불러오기위해
	// 톰켓 sever.xml에 <Context path="/banzzackimg" reloadable="true"
	// docBase="D:\freecloud"/> 추가

	// 파일 업로드
	@RequestMapping(value = "/fileUpload.do", method = RequestMethod.POST)
	public ModelAndView uplodaForm(MultipartFile file, ModelAndView mav) throws Exception {
		System.out.println("fileUpload에 접근함");
		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());

		String savedName = file.getOriginalFilename();

		File target = new File(uploadPath, savedName);

		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(file.getBytes(), target);

		mav.setViewName("mypage");
		mav.addObject("savedName", savedName);

		return mav; // mypage.jsp(결과화면)로 포워딩
	}

	// 파일 업로드 Ajax
	@RequestMapping(value = "/fileUploadAjax.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String uplodaFormAjax(MultipartFile file, ModelAndView mav) throws IOException, Exception {
		
		String dirname = File.separator + "profile";
		System.out.println(file);
		System.out.println("fileUploadAjax에 접근함");
		
		String savedName = file.getOriginalFilename();
		
		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());

		System.out.println("파일이름 :" + file.getOriginalFilename());
		
		// 랜덤생성+파일이름 저장
        // 파일명 랜덤생성 메서드호출
        savedName = uploadFile(savedName, file.getBytes(), dirname);

		
		return "http://localhost:8181/img/profile/" + savedName;

	}

	// 파일명 랜덤생성 메서드
	private String uploadFile(String originalName, byte[] fileData, String dirName) throws Exception {
		
		// 폴더 생성
		makeDir(uploadPath, dirName);
		// uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
		UUID uuid = UUID.randomUUID();
		// 랜덤생성+파일이름 저장
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath+dirName, savedName);
		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	 // 디렉토리 생성
    private static void makeDir(String uploadPath, String... paths) {
        // 디렉토리가 존재하면
        if (new File(paths[paths.length - 1]).exists()){
            return;
        }
        // 디렉토리가 존재하지 않으면
        for (String path : paths) {
            // 
            File dirPath = new File(uploadPath + path);
            // 디렉토리가 존재하지 않으면
            if (!dirPath.exists()) {
                dirPath.mkdir(); //디렉토리 생성
            }
        }
    }    

}
