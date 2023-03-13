
$(document).ready(function(){
	let data = {};
	$("#grid").kendoGrid({
	    selectable: "multiple cell",
	    allowCopy: true,
	    groupable: true,
	    sortable: true,
	    height: 550,
	    pageable: {
			refresh: true,
			pageSize: 5,
			buttonCount: 5
		},
	    columns: [
	        { field: "요리사" },
	        { field: "요리명" },
	        { field: "시간" },
	        { field: "난이도" },
	        { field: "평점",
	        	template: "<div id='rating'></div>"
	        },
	        { command: [
	        	{name: "details", click: function(e){
	        		alert("자세히보기");
	        	 }
	        	},
	        	{ className: "btn-destroy", name: "destroy", text: "Remove" } 
	        	]
	        }
	    ],
	    editable: "true",
	    dataSource: [
	        { 요리사: "Tea", 요리명: "닭가슴살", 시간: "1분", 난이도: "하"}
	
	    ]
	});
	let rating = $("#rating").kendoRating({
		min: 1,
        max: 5,
        label: false,
        selection: "continuous",
        readonly: true,
        precision: "half",
        value: 3
	});
	
});




