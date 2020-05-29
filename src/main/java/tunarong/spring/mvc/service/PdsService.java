package tunarong.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tunarong.spring.mvc.dao.PdsDAO;
import tunarong.spring.mvc.vo.PdsVO;

import java.util.ArrayList;

@Service("psrv")
public class PdsService {

    private PdsDAO pdao;

    @Autowired
    public PdsService(PdsDAO pdao) {
        this.pdao = pdao;
    }

    public String newPds(PdsVO pd) {
        String result = "데이터 입력 실패!";

        // 첨부파일 정보를 임의로 저장
        // pd.setFname("doggy");
        // pd.setFsize("123");
        pd.setFdown("0");
        // pd.setFtype("zip");

        if (pdao.insertPds(pd))
            result = "데이터 입력 성공!!";

        System.out.println(result);
        // result 변수 값을 WAS 콘솔에 로그형태로 출력

        return result;
    }

    public ArrayList<PdsVO> showPds() {
        return (ArrayList<PdsVO>)pdao.selectPds();
    }

    public PdsVO showOnePds(String pno) {
        return pdao.selectOnePds(pno);
    }

}
