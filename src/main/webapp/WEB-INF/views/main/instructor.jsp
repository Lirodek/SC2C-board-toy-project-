<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <style type="text/css">
		blockquote {
		background:#f9f9f9;
		border-left:10px solid #cccccc;
		margin: 1.5em 10px;
		padding:0.5em 10px;
		quotes: "\201C""\201D""\2018""\2019";
		}
		blockquote:before{
			color:#cccccc;
			content:open-quote;
			font-size:3em;
			line-height:0.1em;
			margin-left:0.25em;
			vertival-align:-0.4em;
		}
		blockquote:after{
			color:#cccccc;
			content:close-quote;
			font-size:3em;
			line-height:0.1em;
			margin-left:0.25em;
			vertival-align:-0.4em;
		}
		.container{
			margin-top: 220px;
		}
	</style>
<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-tags"></span>
							&nbsp;&nbsp; 깃허브 repository 병합
						</h3>
					</div>
					<div class="panel-body">
						<label for="basic-url">Your vanity URL</label>
						<div class="input-group mb-3">
						  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3" style="width:700px" maxlength="500">
						  <button type="button" class="btn btn-primary" style="margin-left: 20px">코드발급</button>
						</div>
					</div>
					<div class="panel-footer">
						<blockquote id="resultUrl"></blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	jQuery().ready(()=>{
		fn_init();
		
	});
	
	function fn_init(){
		const initMessage = '&nbsp;&nbsp;Enter the GitHub Repository you want to merge into.';
		$('#resultUrl').empty();
		$('#resultUrl').append(initMessage);
		$('#basic-url').keypress(()=>{
			if ( event.which == 13 ) {
				fn_action();
		         return false;
		     }
		});
		
	}
	
	function fn_action(){
		let resultCode = 'git subtree add --prefix=';
		let gitUrl = $('#basic-url').val();
		let getArr = gitUrl.split('/');
		let gitName = getArr[4].substr(0,getArr[4].indexOf('.'));
		resultCode += gitName + ' ' + gitUrl + ' master';
		$('#resultUrl').empty();
		$('#resultUrl').append(resultCode);
		
	}
</script>