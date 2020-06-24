<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<fieldset style="width: 100%;">
					<table align="center">
						<tr>
							<td>姓名:</td>
							<td><input type="text" name="name" value="" /></td>
							<td>身分證字號:</td>
							<td><input type="text" name="name" value="" /></td>
							<td>生日:</td>
							<td><input type="text" name="name" value="" />yyyy-MM-dd</td>
						</tr>
						<tr>
							<td>通訊電話:</td>
							<td><input type="text" name="nickname" value="" /></td>
							<td style="text-align: right;">信箱:</td>
							<td><input type="text" name="nickname" value="" /></td>
						</tr>
						<tr>
							<td>戶籍地址:</td>
							<td><textarea style="width: 300%" name="nickname" value="" rows="1" ></textarea></td>
						</tr>
						<tr>
							<td>通訊地址:</td>
							<td><textarea style="width: 300%" name="nickname" value="" rows="1" ></textarea></td>
						</tr>
						<tr>
							<td>服務公司:</td>
							<td><input type="text" name="name" value="" /></td>
							<td style="text-align: right;">職位:</td>
							<td><input type="text" name="name" value="" /></td>
							<td>年資:</td>
							<td><input type="text" name="name" value="" /></td>
						</tr>
						<tr>
							<td>工作地點:</td>
							<td><input type="text" name="nickname" value="" /></td>
							<td style="text-align: right;">月收入:</td>
							<td><input type="text" name="nickname" value="" /></td>
						</tr>
						<tr>
							<td>基金投資:</td>
							<td><textarea style="width: 300%" name="nickname" value="" rows="1" ></textarea></td>
						</tr>
						<tr>
							<td>股票投資:</td>
							<td><textarea style="width: 300%" name="nickname" value="" rows="1" ></textarea></td>
						</tr>
						<tr>
							<td>保險:</td>
							<td><textarea style="width: 300%" name="nickname" value="" rows="1" ></textarea></td>
						</tr>
						<tr>
							<td>其他收入:</td>
							<td><input type="text" name="nickname" value="" /></td>
							<td style="text-align: right;">存摺平均餘額:</td>
							<td><input type="text" name="nickname" value="" /></td>
						</tr>
						<tr>
							<td>扣繳憑單:</td>
							<td><input type="radio" name="sex" value="male" id="sex_male">
								<label for="sex_male">男</label>
							<td><input type="radio" name="sex" value="female"
								id="sex_female"> <label for="sex_female">女</label></td>
						</tr>
						<tr>
							<td>薪資轉帳:</td>
							<td><input type="radio" name="sex" value="male" id="sex_male">
								<label for="sex_male">男</label>
							<td><input type="radio" name="sex" value="female"
								id="sex_female"> <label for="sex_female">女</label></td>
						</tr>
						<tr>
							<td>勞保:</td>
							<td><input type="radio" name="sex" value="male" id="sex_male">
								<label for="sex_male">男</label>
							<td><input type="radio" name="sex" value="female"
								id="sex_female"> <label for="sex_female">女</label></td>
						</tr>
						<tr>
							<td>名下不動產:</td>
							<td><input type="radio" name="sex" value="male" id="sex_male">
								<label for="sex_male">男</label>
							<td><input type="radio" name="sex" value="female"
								id="sex_female"> <label for="sex_female">女</label></td>
						</tr>
						<tr>
							<td>其他貸款:</td>
							<td>
								<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" />
								<label for="vehicle1">學貸</label>
								<input type="checkbox" id="vehicle2" name="vehicle2" value="Car" />
								<label for="vehicle2">車貸</label>
								<input type="checkbox" id="vehicle3" name="vehicle3" value="Boat" />
								<label for="vehicle3">房貸</label>
								<input type="checkbox" id="vehicle4" name="vehicle5" value="Boat" />
								<label for="vehicle4">信貸</label>
								<input type="checkbox" id="vehicle5" name="vehicle4" value="Boat" />
								<label for="vehicle5">其他</label>
							</td>
							<td></td>
							<td><input type="button" style="color: red;"
								value="送出" onclick="history.go(-1)" /></td>	
						</tr>
						
					</table>
				</fieldset>
			</div>