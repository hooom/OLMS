<%@ page contentType="text/html; charset=UTF-8"%>


<link href="/javaCms/resource/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="/javaCms/resource/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="/javaCms/resource/css/jquery.ui.css" rel="stylesheet" type="text/css"/>
<script type='text/javascript' src='/javaCms/dwr/interface/UserAddDwr.js'></script>
<script type='text/javascript' src='/javaCms/dwr/engine.js'></script>
<script type='text/javascript' src='/javaCms/dwr/util.js'></script>

<script type='text/javascript' src='/javaCms/dwr/interface/WebSelectDwr.js'></script>
<script type='text/javascript' src='/javaCms/dwr/interface/ModuleSelectDwr.js'></script>

<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="../js/xheditor-1.1.13-zh-cn.min.js"></script>

<script type="text/javascript">	

  	function namecheck(obj)
    {
      	var name=obj.value;
      	UserAddDwr.check(name,CallBackMsg);
    }
  		
  	function CallBackMsg(msg){
  		if(msg.length>0){
  			document.getElementById("nameMsg").innerHTML=msg;
 		}
 	}
</script>


<script type="text/javascript">
		$(document).ready(function(){
			
			update();
			
			//初始化xhEditor编辑器插件
			$('#xh_editor').xheditor({
				tools:'full',
				skin:'default',
				upMultiple:true,
				upImgUrl: "/javaCms/servlet/UploadFileServlet",
				upImgExt: "jpg,jpeg,gif,bmp,png",
				onUpload:insertUpload,
				html5Upload:false
			});
			//xbhEditor编辑器图片上传回调函数
			function insertUpload(msg) {
				var _msg = msg.toString();
				var _picture_name = _msg.substring(_msg.lastIndexOf("/")+1);
				var _picture_path = Substring(_msg);
				var _str = "<input type='checkbox' name='_pictures' value='"+_picture_path+"' checked='checked' onclick='return false'/><label>"+_picture_name+"</label><br/>";
				$("#xh_editor").append(_msg);
				$("#uploadList").append(_str);
			}
			//处理服务器返回到回调函数的字符串内容,格式是JSON的数据格式.
			function Substring(s){
				return s.substring(s.substring(0,s.lastIndexOf("/")).lastIndexOf("/"),s.length);
			}
		});
</script>

<script type="text/javascript">
	function webChange(){
		var dlWeb = document.getElementById("webSelect");
		var dlModule = document.getElementById("moduleSelect");
		var dlSubModule = document.getElementById("subModuleSelect");
		dlModule.length = 0;
		dlSubModule.length = 0;
		//清空moduleMsg中内容
  		document.getElementById("moduleMsg").innerHTML="";
		if(dlWeb.value == -1){
			dlModule.options.add(new Option("--版块列表--","-1"));
			dlSubModule.options.add(new Option("--子版块列表--","-1"));
		}else{
			dlModule.options.add(new Option("--版块列表--","-1"));
			dlSubModule.options.add(new Option("--子版块列表--","-1"));
  			WebSelectDwr.select(dlWeb.value,WebCallBackMsg);
		}
	}
	
	function WebCallBackMsg(result){
		if(result != null){
			var dlModule = document.getElementById("moduleSelect");
	  		var resultArray= result.split("|");
	  		var count = resultArray.length;
	  		for (var i = 2; i <count; i++){  
	  			if(i%2==0){
	  				dlModule.options.add(new Option(resultArray[i], resultArray[i-1]));   //将结果循环添加到下拉列表中
	  			}        
	        }
		}
 	}
 	
 	function moduleChange(){
		var dlModule = document.getElementById("moduleSelect");
		var dlSubModule = document.getElementById("subModuleSelect");
		//清空moduleMsg中内容
  		document.getElementById("moduleMsg").innerHTML="";
		dlSubModule.length = 0;
		if(dlModule.value == -1){
			dlSubModule.options.add(new Option("--子版块列表--","-1"));
		}else{
			dlSubModule.options.add(new Option("--子版块列表--","-1"));
			ModuleSelectDwr.select(dlModule.value,ModuleCallBackMsg);
		}
 	}
 	
 	function ModuleCallBackMsg(result){
 		if(result != null){	
			var dlSubModule = document.getElementById("subModuleSelect");
	  		var resultArray= result.split("|");
	  		var count = resultArray.length;
	  		for (var i = 2; i <count; i++){  
	  			if(i%2==0){
	  				var result = resultArray[i]+"("+resultArray[i-1]+")";
	  				dlSubModule.options.add(new Option(resultArray[i],result));   //将结果循环添加到下拉列表中
	  			}        
	        }
 		}
 	}
 	
 	function subModuleChange(){
		var dlSubModule = document.getElementById("subModuleSelect");
  		document.getElementById("moduleMsg").innerHTML=dlSubModule.value;
 	}
</script>


<script type="text/javascript">
function add(){
	    var $subModuleID = $('#moduleMsg').html();
        if($subModuleID == ""){
        	alert("对不起您未选择模块");
        }else{
        	lineIndexString = "line"+$subModuleID; 
	        var otr = document.getElementById("tab").insertRow(0);
	        var otd1 = document.createElement("td");
	        otd1.innerHTML = '<input type="text" id='+lineIndexString+' name="attachmentNames" disabled/>';
	        otr.appendChild(otd1);
	        document.getElementById(lineIndexString).value=$subModuleID;
	        
	        
	        
  			update();  
        }
     }
     
function deleteLine(){
	document.getElementById("tab").deleteRow(0);
	update();
}

//更新selectModuleMsg
function update(){
  	var result = "";
	var moduleList = document.getElementsByName("attachmentNames");
	var length = moduleList.length;
	for(var i=0;i<length;i++){
  		result+=moduleList[i].value+"|";
	}
  	document.getElementById("selectModuleMsg").value = result;
  	console.log("result" + result);
}
</script>