
$(document).ready(function(){
	let ganreLi = $("#ganreLi");
	$("#tabstrip-left").kendoTabStrip().data("kendoTabStrip").activateTab(ganreLi);
	$(".recipeSPorm").hide();
	// 메뉴 레시피 검색 클릭 
	$(document).on("click", "#recipeSearch", function(){

		$("#tabstrip").hide();
		$(".recipeSPorm").show();
		$("#tabstrip-left").kendoTabStrip({
			tabPosition: "left",
	        animation:  {
	            open: {
	                effects: "fadeIn"
	            }
	        }
	    });
		
		// db에 있는 종류, 상황, 재료, 방법 리스트 가져오기

		for(let i=1; i <= 4; i++){
			
			$.ajax({
				type:'post',
				url:'/smtr/chef/searchRe',
				data: {"sel":i},
				success : function(result){
					
					let text = "";
					
					if(i == 1){
							
						$.each(result, function(index, value){							
							if(index % 9 != 0 || index == 0){
								text += "<a name='g' style='margin-right:10px' id='" + value["GANRE"]+ "'>" + value["GANRE"] + "<a/>";							
							} else {
								text += "<br><br><a name='g' style='margin-right:10px' id='" + value["GANRE"]+ "'>" + value["GANRE"] + "<a/>";
							}
						}); 
						
						$("#ganre").empty();
						$("#ganre").append(text).trigger("create");
						
						
					} else if(i == 2){
						
						$.each(result, function(index, value){							
							if(index % 9 != 0 || index == 0){
								text += "<a name='s' style='margin-right:10px' id='" + value["SITUATION"]+ "'>" + value["SITUATION"] + "<a/>";							
							} else {
								text += "<br><br><a name='s' style='margin-right:10px' id='" + value["SITUATION"]+ "'>" + value["SITUATION"] + "<a/>";
							}
						}); 
						
						$("#situational").empty();
						$("#situational").append(text).trigger("create");
						
					} else if(i == 3){
						
						$.each(result, function(index, value){							
							if(index % 9 != 0 || index == 0){
								text += "<a name='i' style='margin-right:10px' id='" + value["INGREDIENT"]+ "'>" + value["INGREDIENT"] + "<a/>";							
							} else {
								text += "<br><br><a name='i' style='margin-right:10px' id='" + value["INGREDIENT"]+ "'>" + value["INGREDIENT"] + "<a/>";
							}
						}); 
						
						$("#ingredient").empty();
						$("#ingredient").append(text).trigger("create");
						
					} else {

						$.each(result, function(index, value){							
							if(index % 9 != 0 || index == 0){
								text += "<a name='c' style='margin-right:10px' id='" + value["COOKERY"]+ "'>" + value["COOKERY"] + "<a/>";							
							} else {
								text += "<br><br><a name='c' style='margin-right:10px' id='" + value["COOKERY"]+ "'>" + value["COOKERY"] + "<a/>";
							}
						}); 
						
						$("#cookery").empty();
						$("#cookery").append(text).trigger("create");
					}
				},
				error : function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
				
			});
			
		}
		
	});
	
	/* 레시피 검색 카테고리 클릭 시*/
	let textT = "";
	let textG = "";
	let textS = "";
	let textI = "";
	let textC = "";
	// 종류별 카테고리 선택
	$(document).on("click", "a[name=g]", function(){
		textS = "";
		let g;
		g = $(this).text();
		
		if(textG == ""){
			textG += g;
			textG += " > ";
		} else {
			
			textG = "";
			textG += g;
			textG += " > ";
		}
		$(".insertList").empty();
		$(".insertList").append(textG).trigger("create");
	});
	// 상황별 카테고리 선택
	$(document).on("click", "a[name=s]", function(){
		let s;
		s = $(this).text();
		
		if(textS == ""){
			textS += s;
			textS += " > ";
		}else {
			
			textS = "";
			textT = "";
			textS += s;
			textS += " > "
		}
		textT = "";
		textT += textG; 
		textT += textS;
		$(".insertList").empty();
		$(".insertList").append(textT).trigger("create");
	});
	// 재료별 카테고리 선택
	$(document).on("click", "a[name=i]", function(){
		let i;
		i = $(this).text();
		
		if(textI == ""){
			textI += i;
			textI += " > ";	
		} else {
			textI = "";
			textI += i;
			textI += " > ";
		}
		
		textT = "";
		textT += textG;
		textT += textS;
		textT += textI;
		$(".insertList").empty();
		$(".insertList").append(textT).trigger("create");
	});
	// 방법별 카테고리 선택
	$(document).on("click", "a[name=c]", function(){
		let c;
		c = $(this).text();
		
		if(textC == ""){
			textC += c;
		} else {
			textC = "";
			textC += c;
		}
		
		textT = "";
		textT += textG;
		textT += textS;
		textT += textI;
		textT += textC;
		$(".insertList").empty();
		$(".insertList").append(textT).trigger("create");
	});
	
	// ~별 레시피 검색 버튼 클릭 시
	$(document).on("click", "#totalSearchBtn", function(){
		
		if(textT == ""){
			alert("아무것도 검색되지 않았습니다.");
		} else {
			
			$.ajax({
				type : 'post',
				url : '/smtr/recipe/category',
				data : {"textT":textT},
				success : function(result){	
					
				},
				error : function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		}
	});
	
});



















