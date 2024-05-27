package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.Board;
import com.spring.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {
   
    @Autowired
    private BoardService boardService;
    
    @Value("#{uploadPath}")
    private String uploadDir;

    @GetMapping("boardList.do")
    public String getBoardList(Model model, HttpSession session) {
        String sid = (String) session.getAttribute("sid");
        model.addAttribute("boardList", boardService.getBoardList());
        model.addAttribute("sid", sid);
        return "board/boardList";
    }

    @GetMapping("getBoard.do")
    public String getNotice(@RequestParam("no") int no, Model model, HttpSession session) {
        model.addAttribute("board", boardService.getBoard(no));
        model.addAttribute("sid", session.getAttribute("sid"));
        return "board/getBoard";
    }

    @GetMapping("insBoard.do")
    public String insertNoticeForm(Model model) {
        model.addAttribute("board", new Board());
        return "board/insBoard";
    }

    @PostMapping("insBoard.do") //@RequestParam => insboard.jsp의 File - name값
    public String insBoard(@ModelAttribute("board") Board board, @RequestParam("file") MultipartFile datafile, RedirectAttributes ra) {
        if (!datafile.isEmpty()) { 
            try {
            	// 파일 이름 생성 및 저장 경로 설정
                String filename = System.currentTimeMillis() + datafile.getOriginalFilename();
                String savePath = uploadDir + filename;
                //파일 디렉토리 화인 및 생성
                File dir = new File(uploadDir);
                if (!dir.exists()) {
                    dir.mkdirs(); // 경로에 폴더가 없으면 만들어라.
                }
                //파일 저장
                datafile.transferTo(new File(savePath));
                board.setDatafile(filename);
            } catch (IOException e) {
                ra.addFlashAttribute("message", "File upload failed: " + e.getMessage());
                return "redirect:/board/insBoard.do";
            }
        }
        board.setResdate(new Date());
        boardService.insBoard(board);
        System.out.println("업로드 성공");
        return "redirect:/board/boardList.do";
    }

    @GetMapping("upBoard.do")
    public String editNoticeForm(@RequestParam("no") int no, Model model) {
        model.addAttribute("board", boardService.getBoard(no));
        return "board/upBoard";
    }

    @PostMapping("upProBoard.do")
    public String editBoard(@ModelAttribute("board") Board board, @RequestParam("datafile") MultipartFile datafile, RedirectAttributes redirectAttributes) {
        if (!datafile.isEmpty()) {
            try {
                String filename = System.currentTimeMillis() + datafile.getOriginalFilename();
                String savePath = uploadDir + filename;
                File dir = new File(uploadDir);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                datafile.transferTo(new File(savePath));
                board.setDatafile(filename);
            } catch (IOException e) {
                redirectAttributes.addFlashAttribute("message", "File upload failed: " + e.getMessage());
                return "redirect:/board/upBoard.do";
            }
        }
        board.setResdate(new Date());
        boardService.upBoard(board);
        redirectAttributes.addFlashAttribute("message", "Board updated successfully.");
        return "redirect:/board/boardList.do";
    }

    @GetMapping("delBoard.do")
    public String delBoard(@RequestParam("no") int no) {
        boardService.delBoard(no);
        return "redirect:/board/boardList.do";
    }
    
    @GetMapping("/downloadFile/{filename:.+}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String filename, HttpServletRequest request) throws IOException {
        Path filePath = Paths.get(uploadDir + filename);
        Resource resource = new UrlResource(filePath.toUri());
        if (!resource.exists() || !resource.isReadable()) {
            throw new RuntimeException("Could not read file: " + filename);
        }
        String mimeType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
        if (mimeType == null) {
            mimeType = "application/octet-stream";
        }
        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(mimeType))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                .body(resource);
    }
}
