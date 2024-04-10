$(function(){
/* 价格验证 */
$("#cprice,#crentprice,#cdeposit").blur(function(){
	var reg = /^[0-9\.]*$/;
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content==""){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Not Null</span>");
	}else if(!content.match(reg)){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Must be Number</span>");
	}else{
		$parent.children("span").remove();
	}
});

/* Simplified Identity Card Validation */
$("#cidentity").blur(function(){
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content == ""){
		$parent.children("span").remove(); // Removes any existing <span> elements
		$parent.append("<span class='formtips'>Not Null</span>"); // Adds a 'Not Null' message
	}else{
		$parent.children("span").remove(); // Ensures no message is displayed if input is not empty
	}
});

/* Simplified Phone Number Validation */
$("#cphone").blur(function(){
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content == ""){
		$parent.children("span").remove(); // Removes any existing <span> elements
		$parent.append("<span class='formtips'>Not Null</span>"); // Adds a 'Not Null' message
	}else{
		$parent.children("span").remove(); // Ensures no message is displayed if input is not empty
	}
});


/* 用户名英文或数字  */
$("#cuserName,#cuserPassword").blur(function(){
	var regex = /^[0-9a-zA-Z]*$/;
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content==""){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Not Null</span>");
	}else if(!content.match(regex)){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Only Letter or Number</span>");
	}else{
		$parent.children("span").remove();
	}
});

/* 车号,车型，车品牌非空验证  */
$("#ccarNumber,#ccarType,#ccarBrand,#crealname,#ccustName,#crealPay").blur(function(){
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content==""){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Not Null</span>");
	}else{
		$parent.children("span").remove();
	}
});

/* 租车起始时间，截止时间  非空且起始<截止*/
$("#priceShouldPay").blur(function(){
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content==""){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Must larger than 0</span>");
	}else{
		$parent.children("span").remove();
	}
})

$("#ccarNumber,#ccarType,#ccarBrand,#crealname,#ccustName,#crealPay").blur(function(){
	var $parent = $(this).parent();
	var content = $(this).val();
	if(content==""){
		$parent.children("span").remove();
		$parent.append("<span class='formtips'>Not Null</span>");
	}else{
		$parent.children("span").remove();
	}
});


/* 提交前验证所有是否合乎规则 */
$("#dataSub").click(function(){
	$("form :input.required").trigger("blur");
	var numError = $(".formtips").length;
		if(numError){
			return false;
		}
	});
})