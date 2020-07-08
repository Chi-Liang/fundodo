<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>房多多</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>房多多</title>
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- font-icon -->
    <link rel="stylesheet" href="css/fonts/css/fontello.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="css/lightcase.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/iframe.css">

    <script src="js/jquery.min.js"></script>
    <!-- <script src="js/jquery.easing.1.3.js"></script> -->
    <script src="js/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/lightcase.js"></script>
    <script src="js/ui.js"></script>
    <script src="js/common.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
	 $(function(){
			<%
			String userName=(String)session.getAttribute("name");
			%>
			var name = "<%=userName%>";
			getPersonInfo(null,name);
			checkSession();
	 });
	</script>
	

</head>
<body>
 <!-- 個人資料 -->
 		   <jsp:include page="/include/header.jsp" flush="true"/>	  
           <div id="personInfo" align="center" style="margin-bottom: 30px;" ><br>
	           <form id="myform" action="">
					<fieldset style="width: 100%;">
						<table align="center">
							<tr>
								<td>姓名:</td>
								<td><input type="text" id="name" name="name" value="" />
									<div id="nameFlag"  style="margin-top: -5px;" ></div>
								</td>
								<td style="text-align: right;">身分證字號:</td>
								<td><input type="text" id="taxId" name="taxId" value="" />
									<div id="taxIdFlag"  style="margin-top: -5px;" ></div>
								</td>
								<td>生日:</td>
								<td><input type="text" id="birthday" name="birthday" readonly="readonly" value="" />
									<div id="birthdayFlag"  style="margin-top: -5px;" ></div>
								</td>
							</tr>
							<tr>
								<td>通訊電話:</td>
								<td><input type="text" id="phone" name="phone" value="" />
									<div id="phoneFlag"  style="margin-top: -5px;" ></div>
								</td>
								<td style="text-align: right;">信箱:</td>
								<td><input type="text" id="email" name="email" value="" />
									<div id="emailFlag"  style="margin-top: -5px;" ></div>
								</td>
							</tr>
							<tr>
								<td>戶籍地址:</td>
								<td><textarea style="width: 300%" id="residenceAddress" name="residenceAddress" value="" rows="1" ></textarea>
									<div id="residenceAddressFlag"  style="margin-top: -5px;" ></div>
								</td>
							</tr>
							<tr>
								<td>通訊地址:</td>
								<td><textarea style="width: 300%" id="communicationAddress" name="communicationAddress" value="" rows="1" ></textarea>
									<div id="communicationAddressFlag"  style="margin-top: -5px;" ></div>
								</td>
							</tr>
							<tr>
								<td>服務公司:</td>
								<td><input type="text" id="company" value="" /></td>
								<td style="text-align: right;">職位:</td>
								<td><input type="text" id="position" value="" /></td>
								<td>年資:</td>
								<td><input type="text" id="seniority" value="" /></td>
							</tr>
							<tr>
								<td>工作地點:</td>
								<td><input type="text" id="workspace" value="" /></td>
								<td style="text-align: right;">月收入:</td>
								<td><input type="text" id="monthlySalary" value="" /></td>
							</tr>
							<tr>
								<td>基金投資:</td>
								<td><textarea style="width: 300%" id="fundInvestment" value="" rows="1" ></textarea></td>
							</tr>
							<tr>
								<td>股票投資:</td>
								<td><textarea style="width: 300%" id="stockInvestment" value="" rows="1" ></textarea></td>
							</tr>
							<tr>
								<td>保險:</td>
								<td><textarea style="width: 300%" id="insurance" value="" rows="1" ></textarea></td>
							</tr>
							<tr>
								<td>其他收入:</td>
								<td><input type="text" id="otherIncome" value="" /></td>
								<td style="text-align: right;">存摺平均餘額:</td>
								<td><input type="text" id="averageBalance" value="" /></td>
							</tr>
							<tr>
								<td>扣繳憑單:</td>
								<td><input type="radio" name="withholdVoucher" value="1" id="withholdVoucherYes" />
									有</td>
								<td><input type="radio" name="withholdVoucher" value="0"  id="withholdVoucherNo" style="margin-left: -150px;" checked="checked" />
									無</td>
							</tr>
							<tr>
								<td>薪資轉帳:</td>
								<td><input type="radio" name="payrollTransfer" value="1" id="payrollTransferYes" />
									有</td>
								<td><input type="radio" name="payrollTransfer" value="0" id="payrollTransferNo" style="margin-left: -150px;" checked="checked" />
								    無</td>
							</tr>
							<tr>
								<td>勞保:</td>
								<td><input type="radio" name="laborProtection" value="1" id="laborProtectionYes" />
									有</td>
								<td><input type="radio" name="laborProtection" value="0" id="laborProtectionNo" style="margin-left: -150px;" checked="checked" />
								    無</td>
							</tr>
							<tr>
								<td>名下不動產:</td>
								<td><input type="radio" name="realEstate" value="1" id="realEstateYes" />
									有</td>
								<td><input type="radio" name="realEstate" value="0" id="realEstateNo"  style="margin-left: -150px;" checked="checked" />
								    無</td>
							</tr>
							<tr>
								<td>其他貸款:</td>
								<td>
									<input type="checkbox" id="studentLoan" name="studentLoan"  />
									學貸
									<input type="checkbox" id="carLoan" name="carLoan"  />
									車貸
									<input type="checkbox" id="housingLoan" name="housingLoan"  />
									房貸
									<input type="checkbox" id="creditLoan" name="creditLoan"  />
									信貸
									<input type="checkbox" id="otherLoans" name="otherLoans"  />
									其他
								</td>
									<td id="mid" style="visibility: hidden;" ><%=userName%></td>
									<td><input type="submit" style="color: red;"
										value="送出" /></td>
							</tr>
							
						</table>
					</fieldset>
				</form>	
			</div>
		<jsp:include page="/include/footer.jsp" flush="true"/>	
			
</body>
</html>