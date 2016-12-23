<%@ page language="java" contentType="text/html; charset=GB18030"  
    pageEncoding="GB18030"%>  
<!doctype html>
<html>
    <head bgcolor="blue" text="white">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="resources/css/admin_2.css" rel="stylesheet" type="text/css">
        <title>使用者編輯</title>
        
    </head>
    
    <body>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" /> 
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js">
$(function (){
	/**
	 * 格式化
	 * @param   num 要轉換的數字
	 * @param   pos 指定小數第幾位做四捨五入
	 */
	function format_float(num, pos)
	{
		var size = Math.pow(10, pos);
		return Math.round(num * size) / size;
	}
 
 
	/**
	 * 預覽圖
	 * @param   input 輸入 input[type=file] 的 this
	 */
	function preview(input) {

		// 若有選取檔案
		if (input.files && input.files[0]) {

			// 建立一個物件，使用 Web APIs 的檔案讀取器(FileReader 物件) 來讀取使用者選取電腦中的檔案
			var reader = new FileReader();

			// 事先定義好，當讀取成功後會觸發的事情
			reader.onload = function (e) {

				console.log(e);

				// 這裡看到的 e.target.result 物件，是使用者的檔案被 FileReader 轉換成 base64 的字串格式，
				// 在這裡我們選取圖檔，所以轉換出來的，會是如 『data:image/jpeg;base64,.....』這樣的字串樣式。
				// 我們用它當作圖片路徑就對了。
				$('.preview').attr('src', e.target.result);

				// 檔案大小，把 Bytes 轉換為 KB
				var KB = format_float(e.total / 1024, 2);
				$('.size').text("檔案大小：" + KB + " KB");
			}

			// 因為上面定義好讀取成功的事情，所以這裡可以放心讀取檔案
			reader.readAsDataURL(input.files[0]);
		}
	}
 
	$("body").on("change", ".upl", function (){
		preview(this);
	})
    
})
</script>
        

        <header class="header">
			<h1>使用者編輯</h1>
        </header>
        <aside class="aside">      
            <ul>
				<li>活動</li>
				<li>建築</li>
				<li>生物</li>
                <p> sing out</p>   			
            </ul>
                    
            <footer class="footer">
				<strong>Copyright &copy; 2017 </strong>
  			</footer>
        </aside>
        <section class="section">
        <section>        
			<div class="row">
				<div id="div1">
					<div class="inner">
						<h3>活動</h3>
					</div>
				</div>			
				<div id="div2">
					<div class="inner">
						<h3>建築</h3>
					</div>
				</div>
				<div id="div3">
					<div class="inner">
						<h3>生物</h3>
					</div>
				</div>
			</div>	 
		</section>      
		  <div class="left_div">
		  	
		  </div>
			  <div class="right_div">
				<div>
					  <h3>新增</h3>
					</div>
					<div class="box-body">
					  <form action="#" method="post">
						<div class="form-group"> </div>
						<div class="form-group">
					  主題 
						  <input type="text" class="form-control" name="subject" placeholder="主題">
						</div>
						<div>
						座標
						<a href="javascript: $('#map').dialog({
						autoOpen: true, show:{effect:'drop', direction:'right', duration: 1500}, width: 'auto', height: 'auto', resizable: false});">【選擇地點】</a>
						<div class="map_div" title="分析報導" id="map" >
						<iframe class="map_iframe" src="http://maps.google.com.tw/maps?f=q&amp;hl=zh-TW&amp;geocode=&amp;q=24.941698, 121.220479(文網股份有限公司)&amp;z=16&amp;output=embed&amp;t=" frameborder="0" height="100%"></iframe> 
						<button type="button" class="pull-right btn btn-default" id="setMap">確認<br></button>
						</div>
						</div>
						<div>
						
						<form>
							<input type='file' class="upl">
							<div>
								<img class="preview" style="max-width: 150px; max-height: 150px;">
								<div class="size"></div>
							</div>
						</form>
						
						 
						</div>
						 <div>
						  <textarea class="textarea" placeholder="詳細說明"></textarea>
						</div>
					  </form>
					</div>
					<div class="box-footer clearfix">
					  <button type="button" class="pull-right btn btn-default" id="submit">新增<br>
					  </button>
					</div>
				  </div>

				<!-- /.Left col -->
				<!-- right col (We are only adding the ID to make the widgets sortable)-->
				<section class="col-lg-5 connectedSortable">
        	</section>	       
        </section>
    

    </body>
</html>