package tunarong.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import tunarong.spring.mvc.service.FileUpDownUtil;
import tunarong.spring.mvc.service.PdsService;
import tunarong.spring.mvc.vo.PdsVO;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class PdsController {

    private PdsService psrv;

    @Autowired
    public PdsController(PdsService psrv) {
        this.psrv = psrv;
    }

    // 목록보기
    @RequestMapping(value = "/pds/list")
    public ModelAndView list() {

        ModelAndView mv = new ModelAndView();

        mv.setViewName("layout/layout"); // 뷰이름 지정
        mv.addObject("action", "../pds/list.jsp");

        // 목록 불러오기
        ArrayList<PdsVO> plist = psrv.showPds();
        mv.addObject("plist", plist);

        return mv;
    }

    // 새글쓰기
    @RequestMapping(value = "/pds/write")
    public ModelAndView write() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../pds/write.jsp");

        return mv;
    }

    // 새글쓰기
    @RequestMapping(value = "/pds/write", method = RequestMethod.POST)
    public String writeok(PdsVO pd, HttpServletRequest req) {

        // 업로드 처리
        FileUpDownUtil util = new FileUpDownUtil();
        Map<String, String> frmdata = util.procUpload(req);

        // multipart 폼 데이터 처리
        for(String key:frmdata.keySet()) {
            String val = frmdata.get(key);
            switch (key) {
                case "title":pd.setTitle(val);break;
                case "userid":pd.setUserid(val);break;
                case "contents":pd.setContents(val);break;

                case "file1":pd.setFname(val);break;
                case "file1size":pd.setFsize(val);break;
                case "file1type":pd.setFtype(val);break;
            }
        }


        // 서비스 객체로 넘김
        psrv.newPds(pd);

        return "redirect:/pds/list";
    }

    // 본문보기
    @RequestMapping(value = "/pds/view")
    public ModelAndView view(String pno) {

        ModelAndView mv = new ModelAndView();

        mv.setViewName("layout/layout"); // 뷰이름 지정
        mv.addObject("action", "../pds/view.jsp");

        PdsVO p = psrv.showOnePds(pno);
        mv.addObject("p", p);

        return mv;
    }

    // 수정하기
    @RequestMapping(value = "/pds/update")
    public ModelAndView update() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("layout/layout"); // 뷰이름 지정

        mv.addObject("action", "../pds/modify.jsp");

        return mv;
    }

    // 삭제하기
    @RequestMapping(value = "/pds/delete")
    public String delete() {

        return "redirect:/pds/list";
    }

}
