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
            dataType : 'json', 
            contentType : 'application/json; charset=utf-8',
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

function enterPersonInfo(){
	
	var userName = $("#mid").text();
	var name = $("#name").val();
	var taxId = $("#taxId").val();
	var birthday = $("#birthday").val();
	var phone = $("#phone").val();
	var email = $("#email").val();
	var residenceAddress = $("#residenceAddress").val();
	var communicationAddress = $("#communicationAddress").val();
	var company = $("#company").val();
	var position = $("#position").val();
	var seniority = $("#seniority").val();
	var workspace = $("#workspace").val();
	var monthlySalary = $("#monthlySalary").val();
	var fundInvestment = $("#fundInvestment").val();
	var stockInvestment = $("#stockInvestment").val();
	var insurance = $("#insurance").val();
	var otherIncome = $("#otherIncome").val();
	var averageBalance = $("#averageBalance").val();
	
	var withholdVoucher =$("input[name='withholdVoucher']:checked").val(); 
	var payrollTransfer =$("input[name='payrollTransfer']:checked").val(); 
	var laborProtection =$("input[name='laborProtection']:checked").val(); 
	var realEstate =$("input[name='realEstate']:checked").val(); 
	
	var studentLoan = $("#studentLoan").is(":checked") ? "1" : "0";
	var carLoan = $("#carLoan").is(":checked") ? "1" : "0";
	var housingLoan = $("#housingLoan").is(":checked") ? "1" : "0";
	var creditLoan = $("#creditLoan").is(":checked") ? "1" : "0";
	var otherLoans = $("#otherLoans").is(":checked") ? "1" : "0";
	
	var obj = {};
	obj.mid = userName;
	obj.name = name;
	obj.taxId = taxId;
	obj.birthday = birthday;
	obj.phone = phone;
	obj.email = email;
	obj.residenceAddress = residenceAddress;
	obj.communicationAddress = communicationAddress;
	obj.company = company;
	obj.position = position;
	obj.seniority = seniority;
	obj.workspace = workspace;
	obj.monthlySalary = monthlySalary;
	obj.fundInvestment = fundInvestment;
	obj.stockInvestment = stockInvestment;
	obj.insurance = insurance;
	obj.otherIncome = otherIncome;
	obj.averageBalance = averageBalance;
	obj.withholdVoucher = withholdVoucher;
	obj.payrollTransfer = payrollTransfer;
	obj.laborProtection = laborProtection;
	obj.realEstate = realEstate;
	obj.studentLoan = studentLoan;
	obj.carLoan = carLoan;
	obj.housingLoan = housingLoan;
	obj.creditLoan = creditLoan;
	obj.otherLoans = otherLoans;
	
	$.ajax({
            type :"POST",
            url  : "https://app.hanye.com.tw/pl-admin/api/personInfo/insertOrUpdate",
            async : false,
            dataType : 'json', 
            contentType : 'application/json; charset=utf-8', 
            data : JSON.stringify(obj),
            success : function(data) {
				alert("save success");	
        	},
        	error : function(xhr,ajaxOption,error) {
        		alert(xhr.responseText);
        	}
        }) 
}


