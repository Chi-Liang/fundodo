function changeStatus(name,page){
			
	$.ajax({
            type :"GET",
            url  : "https://app.hanye.com.tw/pl-admin/api/category/list",
            async : false,
       		data : { 
       			mid : name
	        }, 
            success : function(data) {
            	data = data.sort(function (a, b) {
            		 return a.cid > b.cid ? 1 : -1;
            	});
				$.each(data, function(key, obj) {
            		var appendCategory = "<li><a href='#' onclick=searchVideo("+ obj.cid +",'" + page + "');  class='page-nav-item'> <i class='icon-video icon'></i> " + obj.name + "</a></li>";						
            		$("#pageNav").append(appendCategory);
	            });
				var appendCategory = "<li><a href='#' onclick=getPersonInfo('"+ page +"','" + name + "');  class='page-nav-item'> <i class='icon-video icon'></i> 個資輸入 </a></li>";						
        		$("#pageNav").append(appendCategory);	
        	},
        	error : function(xhr,ajaxOption,error) {
        		alert(xhr.responseText);
        	}
        }) 
}

function setFileInfo(){
	$("#fileDownload").css('display','none');	
 	$("#fileDownload").on('click', function() {
        	 		
    	if($("#fileUrl").text() != "" && $("#fileUrl").text() != undefined){
    		window.open($("#fileUrl").text(),"_blank");
 		}else{
       		alert("請選擇影片");
       	}
 	}); 
}

function searchVideo(objCid,page){
	$.ajax({
        type :"GET",
        url  : "https://app.hanye.com.tw/pl-admin/api/video/list",
        async : false,
   		data : { 
   			cid : objCid
        }, 
        success : function(data) {
        	successStatus(data);
        	$("#"+ page).css('display','none');
    	},
    	error : function(xhr,ajaxOption,error) {
    		alert(xhr.responseText);
    	}
    }) 
}

function successStatus(data){
	
	$("#videoPlayer,#subtitle,#title,#description,#videoInfo").css('display','block');
	$("#videoPlayer")[0].src = data.videoUrl;
	$("#title").text(data.title);
	$("#subtitle").text(data.subtitle);
	$("#description").text(data.description);
	$("#fileDownload,#personInfo").css('display','none');
	if(data.fileUrl != "" && data.fileUrl != undefined){
			$("#fileDownload").css('display','block');
			$("#fileUrl").text(data.fileUrl);
	}
}

function checkSession(){
 var checkSession = setInterval(function() {
			$.ajax({
		        type :"GET",
		        url  : "/fundodo/SessionServlet",
		        async : false,
		        success : function(data) {
		        	var obj = JSON.parse(data);
		        	if(obj.result == "Y"){
		        		console.log("session valid");
		        	}else if(obj.result == "N"){
		        		clearInterval(checkSession);
		        		alert("session timeout 請重新登入");
		        		window.location.href = "/fundodo/index.html";
		        	}
		        	
		    	},
		    	error : function(xhr,ajaxOption,error) {
		    		alert(xhr.responseText);
		    	}
			}) 
		}, 1000 * 100)
}

function invalidateSession(){
		$.ajax({
	        type :"POST",
	        url  : "/fundodo/SessionServlet",
	        async : false,
	        success : function(data) {
	        	console.log(data);
	        	
	    	},
	    	error : function(xhr,ajaxOption,error) {
	    		alert(xhr.responseText);
	    	}
		}) 
}


function getPersonInfo(page,name){
	
	$.ajax({
            type :"GET",
            url  : "https://app.hanye.com.tw/pl-admin/api/personInfo/byMember",
            async : false,
       		data : { 
       			mid : name
	        }, 
            success : function(data) {
            	
            	$("#name").val(data.name);
            	$("#taxId").val(data.taxId);
            	$("#birthday").val(data.birthday);
            	$("#phone").val(data.phone);
            	$("#email").val(data.email);
            	$("#residenceAddress").val(data.residenceAddress);
            	$("#communicationAddress").val(data.communicationAddress);
            	$("#company").val(data.company);
            	$("#position").val(data.position);
            	$("#seniority").val(data.seniority);
            	$("#workspace").val(data.workspace);
            	$("#monthlySalary").val(data.monthlySalary);
            	$("#fundInvestment").val(data.fundInvestment);
            	$("#stockInvestment").val(data.stockInvestment);
            	$("#insurance").val(data.insurance);
            	$("#otherIncome").val(data.otherIncome);
            	$("#averageBalance").val(data.averageBalance);
            	
            	$("input[name=withholdVoucher][value='" +data.withholdVoucher +"']").attr('checked',true);
            	$("input[name=payrollTransfer][value='" +data.payrollTransfer +"']").attr('checked',true);
            	$("input[name=laborProtection][value='" +data.laborProtection +"']").attr('checked',true);
            	$("input[name=realEstate][value='" +data.realEstate +"']").attr('checked',true);
            	
            	$("#studentLoan").attr("checked",data.studentLoan == "1" ? true : false ); 
            	$("#carLoan").attr("checked",data.carLoan == "1" ? true : false ); 
            	$("#housingLoan").attr("checked",data.housingLoan == "1" ? true : false ); 
            	$("#creditLoan").attr("checked",data.creditLoan == "1" ? true : false );  
            	$("#otherLoans").attr("checked",data.otherLoans == "1" ? true : false ); 
            	
            	$("#videoPlayer,#subtitle,#title,#description,#videoInfo,#fileDownload").css('display','none');
            	$("#"+ page).css('display','none');	
            	$("#personInfo").css('display','block');
            	
        	},
        	error : function(xhr,ajaxOption,error) {
        		alert(xhr.responseText);
        	}
        }) 
}

function enterPersonInfo(name,page){
	
	$.ajax({
            type :"POST",
            url  : "https://app.hanye.com.tw/pl-admin/api/personInfo/insertOrUpdate",
            async : false,
       		data : { 
       			mid : name
	        }, 
            success : function(data) {
            	
					
        	},
        	error : function(xhr,ajaxOption,error) {
        		alert(xhr.responseText);
        	}
        }) 
}


