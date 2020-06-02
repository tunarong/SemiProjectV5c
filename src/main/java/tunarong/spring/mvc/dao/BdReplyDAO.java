package tunarong.spring.mvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ejb.config.JeeNamespaceHandler;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import tunarong.spring.mvc.vo.ReplyVO;

@Repository("brdao")
public class BdReplyDAO {

    private JdbcTemplate jdbcTemplate;
    @Value("#{jdbc['insertBDReplySQL']}") private String insertBDReplySQL;
    @Value("#{jdbc['selectBDReplySQL']}") private String selectBDReplySQL;

    @Autowired
    public BdReplyDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 댓글쓰기
    public void insertReply(ReplyVO rvo) {
        Object[] params = new Object[] {
                rvo.getReply(), rvo.getUserid(), rvo.getBno()};
        jdbcTemplate.update(insertBDReplySQL, params);

        }


}