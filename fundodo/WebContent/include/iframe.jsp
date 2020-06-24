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
           <div id="personInfo" align="center"  style="display: none" ><br>
				<fieldset style="width: 100%;">
					<table align="center">
						<tr>
							<td>姓名</td>
							<td><input type="text" name="name" value=""></td>
						</tr>
						<tr>
							<td>暱稱</td>
							<td><input type="text" name="nickname" value=""></td>
						</tr>
						<tr>
							<td>性別</td>
							<td><input type="radio" name="sex" value="male" id="sex_male">
								<label for="sex_male">男</label>
							<td><input type="radio" name="sex" value="female"
								id="sex_female"> <label for="sex_female">女</label></td>
						</tr>
						<tr>
							<td>年齡</td>
							<td><input type="age" name="age" value=""></td>
						</tr>
						<tr>
							<td>生日</td>
							<td><input type="text" name="birthday" value="">
								yyyy-MM-dd</td>
						</tr>
						<tr>
							<td>描述</td>
							<td><textarea name="description" rows="5"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="" /> <input type="button"
								value="回上一頁" onclick="history.go(-1)" /></td>
						</tr>
			
					</table>
				</fieldset>
			</div>