package tunarong.spring.mvc.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tunarong.spring.mvc.dao.BdReplyDAO;
import tunarong.spring.mvc.vo.ReplyVO;

@Service("brsrv")
public class BdReplyService{

    private BdReplyDAO brdao;

    @Autowired
    public BdReplyService(BdReplyDAO brdao) {
        this.brdao = brdao;
    }

    // 댓글 쓰기
    public void makeReply(ReplyVO rvo) {
        brdao.insertReply(rvo);
    }
}