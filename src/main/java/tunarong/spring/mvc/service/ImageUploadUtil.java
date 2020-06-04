package tunarong.spring.mvc.service;

import org.imgscalr.Scalr;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component("imgutil")
public class ImageUploadUtil {

    // 이미지 업로드 경로 설정
    private String IMG_UPLOAD_PATH ="C:java/nginx-1.18.0/html/cdn/";

    // 갤러리에 이미지 첨부시 파일 존재 여부 확인
    public boolean checkGalleryFiles(MultipartFile[] img) {
        boolean isFiles = false;

        for(MultipartFile f : img) {
            // 첨부시 파일이름이 존재한다면
            if(!f.getOriginalFilename().isEmpty()) {
                isFiles = true;
                break;
            }
        }
        return isFiles;
    }

    // 업로드한 이미지들 중 첫 번째 이미지에 대한 썸네일 생성
    public void imageCropResize(String fname, String id) {
       // String name = fname.substring(fname.lastIndexOf("_")+1);
        // 서버에 업로드된 파일 이름
        String ofname = IMG_UPLOAD_PATH + fname;
        // 업로드된 파일이름에서 확장자 부분 추출
        String imgtype = fname.substring(fname.lastIndexOf(".")+1);
        // 썸네일 이미지 이름 설정
        String tfname = IMG_UPLOAD_PATH + "_thumb/small_" + id + "." + imgtype;

        try {
            BufferedImage image = ImageIO.read(new File(ofname));
            int imgwidth = Math.min(image.getHeight(), image.getWidth());
            int imgheight = imgwidth;

            BufferedImage scaledImage = Scalr.crop(image, (image.getWidth() - imgwidth)/2,
                    (image.getHeight() - imgheight)/2, imgwidth, imgheight, null);
            BufferedImage resizedImage = Scalr.resize(scaledImage, 235, 200, null);

            ImageIO.write(resizedImage, imgtype, new File(tfname));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // 겹치지 않는 파일명을 위해 유니크한 임의의 값 생성
    private String makeUUID() {
        String fmt = "yyyyMMddHHmmss";
        SimpleDateFormat sdf = new SimpleDateFormat(fmt);

        return sdf.format(new Date());
    }

    // 이미지 파일 업로드
    public String ImageUpload(MultipartFile mf) {
        // 업로드시 첨부파일의 원래 이름
        String ofname = mf.getOriginalFilename();
        // 업로드한 파일을 서버에 저장할 때 사용할 수정된 파일 이름
        String nfname = makeUUID() + "_" + ofname;

        try {
            mf.transferTo(new File(IMG_UPLOAD_PATH + nfname));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return nfname;
    }

}