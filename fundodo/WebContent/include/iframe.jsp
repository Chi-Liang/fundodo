<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String userName=(String)session.getAttribute("name");
%>

<iframe id="videoPlayer" style="display: none" src="https://player.vimeo.com/video/1625913" class="iframe-1 iframe-s-1" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
           	 <div id="videoInfo" style="display: none">
				<div class="videotitle mt-2">
                    <h2 id="title" class="title">影片標題影片標題影片標題影片標題影片標題影片標題影片標題</h2>
                    <h4 id="subtitle" class="subtitle">影片小標題影片小標題影片小標題影片小標題影片小標題影小片標題影片小標題</h4>
                </div>
                <div class="video-content">
                    <p id="description">影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片說明影片</p>
                </div>
                 <br>
                <a id = "fileDownload" class="download-btn" >
                    <img class="img-fluid" src="images/download-btn.jpg" alt="">
                </a>
                 <div id = "fileUrl" style="display: none;"></div>
             </div>
           <!-- 個人資料 -->  
           <div id="personInfo" align="center"  style="display: none;margin-top: 0px;padding-top: 0px;" ><br>
	           <form id="myform" action="">
					<fieldset style="width: 100%;">
						<table align="center">
							<tr>
								<td>姓名:</td>
								<td><input type="text" id="name" value="" /></td>
								<td>身分證字號:</td>
								<td><input type="text" id="taxId" value="" /></td>
								<td>生日:</td>
								<td><input type="text" id="birthday" readonly="readonly" /></td>
							</tr>
							<tr>
								<td>通訊電話:</td>
								<td><input type="text" id="phone" name="phone" value="" /></td>
								<td style="text-align: right;">信箱:</td>
								<td><input type="text" id="email" value="" /></td>
							</tr>
							<tr>
								<td>戶籍地址:</td>
								<td><textarea style="width: 300%" id="residenceAddress" value="" rows="1" name="residenceAddress" ></textarea></td>
							</tr>
							<tr>
								<td>通訊地址:</td>
								<td><textarea style="width: 300%" id="communicationAddress" value="" rows="1" ></textarea></td>
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