package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tour/")
public class TourController {

    @RequestMapping("tour.do")
    public String showTourPage() {
        return "tour/tour";
    }
    @RequestMapping("toursub1_1.do")
    public String showToursubPage1() {
        return "tour/toursub1_1";
    }
    
    @RequestMapping("toursub1_2.do")
    public String showToursubPage2() {
        return "tour/toursub1_2";
    }
    
    @RequestMapping("toursub1_3.do")
    public String showToursubPage3() {
        return "tour/toursub1_3";
    }
    @RequestMapping("toursub1_4.do")
    public String showToursubPage4() {
        return "tour/toursub1_4";
    }
    
    @RequestMapping("toursub2_1.do")
    public String showToursubPage2_1() {
        return "tour/toursub2_1";
    }
    @RequestMapping("toursub2_2.do")
    public String showToursubPage2_2() {
        return "tour/toursub2_2";
    }
    @RequestMapping("toursub2_3.do")
    public String showToursubPage2_3() {
        return "tour/toursub2_3";
    }
    @RequestMapping("toursub2_4.do")
    public String showToursubPage2_4() {
        return "tour/toursub2_4";
    }
    
    @RequestMapping("toursub3_1.do")
    public String showToursubPage3_1() {
        return "tour/toursub3_1";
    }
    @RequestMapping("toursub3_2.do")
    public String showToursubPage3_2() {
        return "tour/toursub3_2";
    }
    @RequestMapping("toursub3_3.do")
    public String showToursubPage3_3() {
        return "tour/toursub3_3";
    }
    @RequestMapping("toursub3_4.do")
    public String showToursubPage3_4() {
        return "tour/toursub3_4";
    }
    @RequestMapping("intro.do")
    public String showIntro() {
        return "tour/intro";
    }
    @RequestMapping("introsite.do")
    public String showIntrosite() {
        return "tour/introsite";
    }
    @RequestMapping("introsokcho.do")
    public String showIntroSokcho() {
        return "tour/introsokcho";
    }
    
}