

//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches



$(".next").click(function(){
	
	if(animating) return false;
	animating = true;

	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
      'transform': 'scale('+scale+')',
      'position': 'absolute'
    });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
	
	//체크박스 값
	var checkarry=document.getElementsByName("chk");
	var tastearry = new Array();
	alert(checkarry.length);
	
	for(var i=0; i<checkarry.length; i++){
		if($(checkarry[i]).is(':checked')){
			tastearry.push(checkarry[i].getAttribute("value"));
			
		}
	}
	//확인차 그냥 넣어놓은 것임. 
	for(var i=0; i<tastearry.length; i++){
		alert(tastearry[i].valueOf());
	}
	
		
	//아작스 처리 
	$.ajax({
		url:"tasteajax_1.do",
		datatype:"json",
		data:"seq="+seq,		
		type:"post",
		success:function(obj){
			alert("성공");
			var dto=obj["dto"];
			$("textarea[name=testajax]").val(dto["content"]);
		},
		error:function(){
			alert("서버통신 실패!!");
		}				
	});	
	
	
});

$(".previous").click(function(){
 	if(animating) return false;
	animating = true;
	
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".submit").click(function(){
// 	return false;
})

