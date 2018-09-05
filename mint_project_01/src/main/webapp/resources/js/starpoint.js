// star rating
var starRating = function(){
  var $star = $(".star-input"),
      $result = $star.find("output>b");
  $(document)
    .on("focusin", ".star-input>.input", function(){
    $(this).addClass("focus");
  })
    .on("focusout", ".star-input>.input", function(){
    var $this = $(this);
    setTimeout(function(){
      if($this.find(":focus").length === 0){
        $this.removeClass("focus");
      }
    }, 100);
  })
    .on("change", ".star-input :radio", function(){
    $result.text($(this).next().text());
  })
    .on("mouseover", ".star-input label", function(){
    $result.text($(this).text());
  })
    .on("mouseleave", ".star-input>.input", function(){
    var $checked = $star.find(":checked");
    if($checked.length === 0){
      $result.text("0");
    } else {
      $result.text($checked.next().text());
    }
  })
};
starRating();


//별점 클릭 메소드
$(".star-input").find("input").click(function(){
	
	var starpoint=$(this).val();
	alert(starpoint);
	var mseq=$("#mseq").attr("class");
	var count= $("#count").val();
	alert(count);
	count++;
		
	var jsonData = {
			"mseq" : mseq,
			"count" : count,
			"starpoint" : starpoint
		};
	
	$.ajax({
		url:"tasteAjax_2.do",
		data:jsonData,
		dataType:"json",
		type:"post",
		success: function(obj){				
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
			alert("실패!ㅜㅜ");
		}
	});	
	
});





