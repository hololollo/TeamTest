$(document).ready(function(){
    var intv = setInterval(next_ani, 10000);
    
    function next_ani() {
        $(".img_box li").eq(0).appendTo($(".img_box"));
    }
    
    function prev_ani() {
        $(".img_box li").eq(3).prependTo($(".img_box"));
    }
    
    $(".btn_box .right").click(function() {
        clearInterval(intv);
        next_ani();
        intv = setInterval(next_ani, 4000);    
    });
    
    $(".btn_box .left").click(function() {
        clearInterval(intv);
        prev_ani();
        intv = setInterval(next_ani, 4000);    
    });
    
    $(".close").click(function() {
        $(".popbox").fadeOut(800);
    });
    
    $(".pop").click(function() {
        $(".popbox").fadeIn(800);
    });
});