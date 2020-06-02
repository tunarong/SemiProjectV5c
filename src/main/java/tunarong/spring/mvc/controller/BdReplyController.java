package tunarong.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import tunarong.spring.mvc.service.BdReplyService;
import tunarong.spring.mvc.vo.ReplyVO;


@Controller
public class BdReplyController {
    private BdReplyService brsrv;
    @Autowired
    public BdReplyController(BdReplyService brsrv) {
        this.brsrv = brsrv;
    }



    // 댓글쓰기 완료
    @PostMapping(value = "/reply/bdrpywrite")
    public String bdrpywrite(ReplyVO rvo) {

        brsrv.makeReply(rvo);

        return "redirect:/board/view.do?bno=" + rvo.getBno();
    }
}

