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
    
    @RequestMapping("toursub.do")
    public String showToursubPage2() {
        return "tour/toursub2";
    }
}