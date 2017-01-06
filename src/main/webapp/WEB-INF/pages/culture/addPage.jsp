<%@ page language="java" contentType="text/html; charset=GB18030"  
    pageEncoding="GB18030"%>  
<!doctype html>
<html>
    <head bgcolor="blue" text="white">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="/resources/css/admin_2.css" rel="stylesheet" type="text/css">
        <title>浣跨敤鑰呯法杓�/title>
        
    </head>
    
    <body>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/smoothness/jquery-ui.css" /> 
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js">
$(function (){
	/**
	 * 鏍煎紡鍖�
	 * @param   num 瑕佽綁鎻涚殑鏁稿瓧
	 * @param   pos 鎸囧畾灏忔暩绗咕浣嶅仛鍥涙崹浜斿叆
	 */
	function format_float(num, pos)
	{
		var size = Math.pow(10, pos);
		return Math.round(num * size) / size;
	}
 
 
	/**
	 * 闋愯鍦�
	 * @param   input 杓稿叆 input[type=file] 鐨� this
	 */
	function preview(input) {

		// 鑻ユ湁閬稿彇妾旀
		if (input.files && input.files[0]) {

			// 寤虹珛涓�鍊嬬墿浠讹紝浣跨敤 Web APIs 鐨勬獢妗堣畝鍙栧櫒(FileReader 鐗╀欢) 渚嗚畝鍙栦娇鐢ㄨ�呴伕鍙栭浕鑵︿腑鐨勬獢妗�
			var reader = new FileReader();

			// 浜嬪厛瀹氱京濂斤紝鐣惰畝鍙栨垚鍔熷緦鏈冭Ц鐧肩殑浜嬫儏
			reader.onload = function (e) {

				console.log(e);

				// 閫欒！鐪嬪埌鐨� e.target.result 鐗╀欢锛屾槸浣跨敤鑰呯殑妾旀琚� FileReader 杞夋彌鎴� base64 鐨勫瓧涓叉牸寮忥紝
				// 鍦ㄩ�欒！鎴戝�戦伕鍙栧湒妾旓紝鎵�浠ヨ綁鎻涘嚭渚嗙殑锛屾渻鏄 銆巇ata:image/jpeg;base64,.....銆忛�欐ǎ鐨勫瓧涓叉ǎ寮忋��
				// 鎴戝�戠敤瀹冪暥浣滃湒鐗囪矾寰戝氨灏嶄簡銆�
				$('.preview').attr('src', e.target.result);

				// 妾旀澶у皬锛屾妸 Bytes 杞夋彌鐐� KB
				var KB = format_float(e.total / 1024, 2);
				$('.size').text("妾旀澶у皬锛�" + KB + " KB");
			}

			// 鍥犵偤涓婇潰瀹氱京濂借畝鍙栨垚鍔熺殑浜嬫儏锛屾墍浠ラ�欒！鍙互鏀惧績璁�鍙栨獢妗�
			reader.readAsDataURL(input.files[0]);
		}
	}
 
	$("body").on("change", ".upl", function (){
		preview(this);
	})
    
})
</script>
        

        <header class="header">
			<h1>浣跨敤鑰呯法杓�/h1>
        </header>
        <aside class="aside">      
            <ul>
				<li>娲诲嫊</li>
				<li>寤虹瘔</li>
				<li>鐢熺墿</li>
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
						<h3>娲诲嫊</h3>
					</div>
				</div>			
				<div id="div2">
					<div class="inner">
						<h3>寤虹瘔</h3>
					</div>
				</div>
				<div id="div3">
					<div class="inner">
						<h3>鐢熺墿</h3>
					</div>
				</div>
			</div>	 
		</section>      
		  <div class="left_div">
		  	
		  </div>
			  <div class="right_div">
				<div>
					  <h3>鏂板</h3>
					</div>
					<div class="box-body">
					  <form action="#" method="post">
						<div class="form-group"> </div>
						<div class="form-group">
					  涓婚 
						  <input type="text" class="form-control" name="subject" placeholder="涓婚">
						</div>
						<div>
						搴ф
						<a href="javascript: $('#map').dialog({
						autoOpen: true, show:{effect:'drop', direction:'right', duration: 1500}, width: 'auto', height: 'auto', resizable: false});">銆愰伕鎿囧湴榛炪��/a>
						<div class="map_div" title="鍒嗘瀽鍫卞皫" id="map" >
						<iframe class="map_iframe" src="http://maps.google.com.tw/maps?f=q&amp;hl=zh-TW&amp;geocode=&amp;q=24.941698, 121.220479(鏂囩恫鑲′唤鏈夐檺鍏徃)&amp;z=16&amp;output=embed&amp;t=" frameborder="0" height="100%"></iframe> 
						<button type="button" class="pull-right btn btn-default" id="setMap">纰鸿獚<br></button>
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
						  <textarea class="textarea" placeholder="瑭崇窗瑾槑"></textarea>
						</div>
					  </form>
					</div>
					<div class="box-footer clearfix">
					  <button type="button" class="pull-right btn btn-default" id="submit">鏂板<br>
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