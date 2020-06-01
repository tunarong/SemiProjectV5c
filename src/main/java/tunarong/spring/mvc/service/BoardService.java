package tunarong.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tunarong.spring.mvc.dao.BoardDAO;
import tunarong.spring.mvc.vo.BoardVO;

import java.util.ArrayList;

@Service("bsrv")
public class BoardService {

    private BoardDAO bdao;

    @Autowired
    public BoardService(BoardDAO bdao) {
        this.bdao = bdao;
    }

    public String newBoard(BoardVO bd) {
        String result = "데이터 입력 실패!";

        if (bdao.insertBoard(bd))
            result = "데이터 입력 성공!!";

        System.out.println(result);
        // result 변수 값을 WAS 콘솔에 로그형태로 출력

        return result;
    }

    public ArrayList<BoardVO> showBoard(String cp) {
        int snum = (Integer.parseInt(cp) -1) * 10;

        return (ArrayList<BoardVO>)bdao.selectBoard(snum);
    }

    public BoardVO showOneBoard(String bno) {
        return bdao.selectOneBoard(bno);
    }

    public int countBoard() {
        return bdao.selectCountBoard();
    }

    // 특정 게시글 삭제하기
    public void removeBoard(String bno) {
        bdao.deleteBoard(bno);
    }
}