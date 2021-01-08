package com.spring.test;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CommonController {
	
	// 파일 저장 주소
	private static final String FILE_SERVER_PATH = "C:/Users/yangsemo/server_file_storage";
	
	// 로그
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/upload.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String upload(@RequestParam("uploadFile") MultipartFile file, Model model) throws IllegalStateException, IOException {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
		
		String formattedDate = sDate.format(date);
		
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, formattedDate));
			model.addAttribute("msg","File uploaded successfully.");
			logger.info("File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
			logger.info("Please select a valid mediaFile..");
		}
		
		return "home";
	}
}
