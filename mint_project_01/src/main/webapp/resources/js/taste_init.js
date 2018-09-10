
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

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

//첫번째 창에서 두번째 창 넘어갈때
$(".next").click(function(){
	
	if(animating) return false;
	animating = true;

	current_fs = $(this).parent().parent();
	next_fs = $(this).parent().parent().next();
	var formsEle=$(this).parent();
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
	
	for(var i=0; i<checkarry.length; i++){
		if($(checkarry[i]).is(':checked')){
			tastearry.push(checkarry[i].getAttribute("value"));			
		}
	}
			
	//아작스 처리 
	$.ajax({
		url:"tasteAjax_1.do",
		data:formsEle.serialize(),
		dataType:"json",
		type:"post",
		success:function(obj){
			var mdto=obj["mdto"];
			$("#mimg").attr("src",mdto["mimg"]);
			$("#mseq").attr("class",mdto["mseq"]);
		},
		error:function(){
			alert("서버통신 실패!!");
		}				
	});			
});

//안봤어요 클릭할때
$(".unseen").click(function(){
	//영화seq, 안봤으니 아무런거 안하고 다음영화 들고와
	var mseq= $("#mseq").attr("class");
	var count= $("#count").val();
	var useq= $("#userseq").val();
	count++;
	
	var jsonData = {
			"mseq" : mseq,
			"count" : count,
			"starpoint" : -1,
			"userseq" : useq
		};
		
	$.ajax({
		url:"tasteAjax_2.do",
		data:jsonData,
		dataType:"json",
		type:"post",
		success:function(obj){
			var mdto=obj["mdto"];
			if(mdto["mseq"] == "-1"){
				//alert("다음버튼 클릭");
				$("#mimg").attr("src", "#");
				$("#mseq").attr("hidden", true);
				$("#form2-next").attr("type", "button");
								
			} else {
				$("#mimg").attr("src",mdto["mimg"]);
				$("#mseq").attr("class",mdto["mseq"]);
				$("#count").attr("value", count);	
			}
			
		},
		error:function(){
			alert("서버통신 실패!!");
		}		
	});
	
});


//관심없어요 일때
$(".unlike").click(function(){
	//영화seq, 관심없어요는 별점2점정도 해당하는 마이너스값 줄것.
	//지금은 -2로 줌.
	
	var mseq= $("#mseq").attr("class");
	var count= $("#count").val();
	var useq= $("#userseq").val();
	count++;
	
	var jsonData = {
			"mseq" : mseq,
			"count" : count,
			"starpoint" : -2,
			"userseq" : useq
		};
		
	$.ajax({
		url:"tasteAjax_2.do",
		data:jsonData,
		dataType:"json",
		type:"post",
		success:function(obj){			
			var mdto=obj["mdto"];
			if(mdto["mseq"] == "-1"){
				alert("다음버튼 클릭");
				$("#mimg").attr("src", "#");
				$("#mseq").attr("hidden", true);
				$("#form2-next").attr("type", "button");
				
				
			} else {
				$("#mimg").attr("src",mdto["mimg"]);
				$("#mseq").attr("class",mdto["mseq"]);
				$("#count").attr("value", count);	
			}
			
		},
		error:function(){
			alert("서버통신 실패!!");
		}		
	});
	
});


//마지막 단계완료
$(".submit").click(function(){

	location.href="tasteMake.do";
})





