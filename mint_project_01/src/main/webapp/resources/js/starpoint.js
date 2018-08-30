//위에까지 폼 아래는 별점 
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

//별점 클릭
$(function(){
	$(".star-input").click(function(){
		var starpoint=$(this).val();
		$.ajax({
			url:"tasteAjax_2.do",
			data:"starpoint="+starpoint,
			dataType:"json",
			type:"post",
			success: function(obj){
				$("textarea[name=testAjax2]").val("");
				
			},
			error:function(){
				alert("실패!ㅜㅜ");
			}
		});	
		
	});
	
});




