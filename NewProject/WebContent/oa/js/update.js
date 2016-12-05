$(function(){
	
	//原始密码提示
	$("#pwd").bind({focus:function(){
		$("#pwdId").removeClass().addClass("import_prompt");
		$("#pwdId").html("请输入原始密码");
		},blur:function(){
			check($(this));
			}});
		
	//新密码提示
	$("#Npwd").bind({focus:function(){
		$("#NpwdId").removeClass().addClass("import_prompt");
		$("#NpwdId").html("请输入新密码");
		},blur:function(){
			check($(this));
			}});
			
	//再次输入新密码提示
	$("#Repwd").bind({focus:function(){
		$("#RepwdId").removeClass().addClass("import_prompt");
		$("#RepwdId").html("请再次输入新密码");
		},blur:function(){
			check($(this));
			}});
	
	//表单验证
	function check($dom){
		//声明flag 验证是够成功
		var flag = false;
		var id =$dom.attr("id");
		switch (id){
			
			//原始密码验证
			case "pwd":
				if($dom.val()==""){
					$("#pwdId").removeClass().addClass("error_prompt");
					$("#pwdId").html("密码不能为空，请输入密码");
					flag=false;
				}else{
					$("#pwdId").removeClass().addClass("ok_prompt");
					$("#pwdId").html("密码输入正确");
					flag=true;
						}
			break;
			
			//输入新密码验证
			case "Npwd":
				if($dom.val()==""){
					$("#NpwdId").removeClass().addClass("error_prompt");
					$("#NpwdId").html("密码不能为空，请输入密码");
					flag=false;
				}else if($dom.val().length < 6 || $("#pwd").val().length>16){
					$("#NpwdId").removeClass().addClass("error_prompt");
					$("#NpwdId").html("密码长度为6-16");
					flag=false;
				}else{
					$("#NpwdId").removeClass().addClass("ok_prompt");
					$("#NpwdId").html("密码输入正确");
					flag=true;	
						}
			break;	
			
			//再次输入新密码验证
			case "Repwd":
				if($dom.val()==""){
					$("#RepwdId").removeClass().addClass("error_prompt");
					$("#RepwdId").html("密码不能为空，请再次输入密码");
					flag=false;
				}else if($dom.val()!=$("#Npwd").val()){
					$("#RepwdId").removeClass().addClass("error_prompt");
					$("#RepwdId").html("两次密码不一致，请重新输入");
					flag=false;
				}else{
					$("#RepwdId").removeClass().addClass("ok_prompt");
					$("#RepwdId").html("两次密码输入正确");
					flag=true;	
						}
			break;		
		}
		
	}
		
		//提交表单
	$("#wordForm").submit(function(){
		var flag=true;
		$(this).find("input[id]").each(function(i,e){
		   if(!check($(e))){
			   flag=false;
		   }
		});
		return flag;
	});
			
});
	