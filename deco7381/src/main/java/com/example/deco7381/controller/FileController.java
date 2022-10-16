package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import org.springframework.boot.system.ApplicationHome;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@RestController
@CrossOrigin
@RequestMapping("/file")

/**
 * A controller for services on file
 */
public class FileController {
    @PostMapping("/upload")
    public R upLoad(@RequestParam("file") MultipartFile photo,@RequestParam("studentId") String studentId) throws IOException {
        //get the file name from file
        String filename = photo.getOriginalFilename();
        //processing the file name
        String houzhui = filename.substring(filename.lastIndexOf("."));
        ApplicationHome applicationHome = new ApplicationHome(this.getClass());
        //adding to the path
        String path=applicationHome.getDir().getParentFile().getParentFile().getAbsolutePath() + "\\src\\main\\resources\\static\\img";
        //new file name
        String newFileName=studentId+houzhui;
        //make a new file object
        File file = new File(path,newFileName);
        File parentFile = file.getParentFile();
        //if parent file is not exist
        if(!parentFile.exists()){
            //create the parent file
            parentFile.mkdir();
        }
        //transfer the photo to file
        photo.transferTo(file);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("fileName",newFileName);

    }
}
