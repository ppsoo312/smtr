let tabToActivate = $("#popularB");
	$("#tabstrip").kendoTabStrip().data("kendoTabStrip").activateTab(tabToActivate);

$(document).ready(function(){

	$("#tabstrip").kendoTabStrip({
        animation:  {
            open: {
                effects: "fadeIn"
            }
        }
    });
	
	$.ajax({
		type : 'post',
		url : "/smtr/chef/popularChef",
		data : {"count":6},
		success : function(result){
			
			let text="";
			
			$.each(result, function(index, value){
				text += "<div class='col-lg-4 col-sm-6'><article class='card mb-4'>" +
				"<div class='post-slider slider-sm'>" +
				"<img src='/smtr/resources/images/rank" + index + ".png' class='card-img-top' alt='post-thumb'></div>" +
				"<div class='card-body'><ul class='card-meta list-inline'>" +
				"<li class='list-inline-item'>" +
				"<a href='author-single.html' class='card-meta-author'>" +
				"<img src='images/kate-stone.jpg'><span>" + value['NICKNAME'] + "</span></a></li>" +
				"<li class='list-inline-item'><i class='ti-timer'></i>2 Min To Read</li>" +
				"<li class='list-inline-item'><i class='ti-calendar'></i>14 jan, 2020</li>" +
				"<li class='list-inline-item'><ul class='card-meta-tag list-inline'>" +
				"<li class='list-inline-item'><a href='tags.html'>" + value['SU'] +"</a></li>" +
				"<li class='list-inline-item'><a href='tags.html'>Tasty</a></li></ul></li></ul>" +
				"</div></article></div>";
			});
			
			$("#popularList").append(text).trigger("create");
			
					
		},
		error : function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			$("#popularList").append("업데이트 중입니다.").trigger("create");
			
		}
	});
});