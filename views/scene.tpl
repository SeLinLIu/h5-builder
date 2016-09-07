{% import "widget/macro.tpl" as macroset %}
<!doctype html>
<html lang="en">
<head>
	{{ macroset.normalHead(config,"微海报")}}
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/Font-Awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/colorbox/expample1/colorbox.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/jquery-jcrop/jquery.Jcrop.min.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/nanoscroller/nanoscroller.css" />
	<link rel="stylesheet" href="{{ config.cssServer }}build/js/lib/jquery-ui/jquery-ui.min.css" />
	<!--{{ macroset.linkcsss(config,[
		"build/css/scene.min.css"
	]) }}-->
	{{ macroset.linkcsss(config,[
		"build/css/base.min.css"
		,"build/css/header.min.css"
		,"build/css/outline.min.css"
		,"build/css/workspace.min.css"
		,"build/css/comp_setting.min.css"
		,"build/css/modal.min.css"
	]) }}
</head>
<body>
	<!-- 头部模板 -->
	<header class="nav-header">
		{% include "widget/header.tpl" %}
	</header>

	<div class="scene">
		<!-- start 大纲视图 -->
		<div class="outline">
			{% include "widget/outline.tpl" %}
		</div><!-- end 大纲视图 -->

		<!-- start 工作区 -->
		<div class="workspace">
			{% include "widget/workspace.tpl" %}
		</div><!-- end 工作区 -->
	</div>
	{% include "widget/global.tpl" %}
	<script src="{{ config.jsServer }}build/js/lib/jquery/jquery-1.11.2.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/widget/jquery.ui.widget.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/cheditor/ckeditor.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/colorbox/jquery.colorbox.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/dragsort/jquery.dragsort-0.4.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/jquery-ui/jquery-ui.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/fileupload/jquery.iframe-transport.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/fileupload/jquery.fileupload.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/fileupload/jquery.fileupload-process.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/fileupload/jquery.fileupload-validate.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/jquery-jcrop/jquery.Jcrop.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/nanoscroller/jquery.nanoscroller.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/qrcode/jquery.qrcode.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/jquery-slides/jquery.slides.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/iScroll/iscroll.min.js"></script>
	<script src="{{ config.jsServer }}build/js/lib/require/require.js" defer async="true"></script>
	<script src="{{ config.jsServer }}build/js/lib/require/require.js" data-main="{{ config.jsServer }}build/js/scene.js"></script>
	{{ macroset.scripts(config,[
		"build/templatefn/modals.min.js"
	]) }}
	<script>
		$(function(){
			$( document ).tooltip({ position: { my: "left+5 center", at: "right center" } });

			//模态框引用
			$('body').append(GTPL.imgModal())
   		});
	</script>
		
</body>
</html>






