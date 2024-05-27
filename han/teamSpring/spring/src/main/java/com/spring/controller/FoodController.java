package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/food/")
public class FoodController {
	
	@RequestMapping("fmain.do")
    public String showFmainPage() {
        return "food/fmain";
    }
	@RequestMapping("food.do")
    public String showFoodPage() {
        return "food/food";
    }
	@RequestMapping("hotel.do")
    public String showHotelPage() {
        return "food/hotel";
    }
	@RequestMapping("market.do")
    public String showMarketPage() {
        return "food/market";
    }
	@RequestMapping("subhotel1.do")
    public String showSubHotel1() {
        return "food/subhotel1";
    }
	@RequestMapping("subhotel2.do")
    public String showSubHotel2() {
        return "food/subhotel2";
    }
	@RequestMapping("subhotel3.do")
    public String showSubHotel3() {
        return "food/subhotel3";
    }
	@RequestMapping("subhotel4.do")
    public String showSubHotel4() {
        return "food/subhotel4";
    }
	@RequestMapping("subhotel5.do")
    public String showSubHotel5() {
        return "food/subhotel5";
    }
	@RequestMapping("subhotel6.do")
    public String showSubHotel6() {
        return "food/subhotel6";
    }
}
