var checkArray = [{"key":"username","value":false},{"key":"userpassword","value":false},{"key":"password_agin","value":false},
                  {"key":"email","value":false},{"key":"phone","value":false},{"key":"real_name","value":false},
                  {"key":"identity_card","value":false},{"key":"securityPassword","value":false},
                  {"key":"securityCode","value":false}];

function changeCheckStatus(key)
{
	for(var i=0;i<checkArray.length;i++)
	{
		if(checkArray[i].key==key)
		{
			checkArray[i].value=true;
		}
	}
}

function returnCheckStatus()
{
	for(var i=0;i<checkArray.length;i++)
	{
		if(checkArray[i].value==false)
		{
			$("#"+checkArray[i].key).focus();
			return false;
		}
	}
	return true;
}

function checkUserName() {
	var url = root + "/checkUserName.action";
	$.post(url, {
		"userInfo.username" : $("#username").val()
	}, function(data) {
		if (data == "yes") {
			openModal("用户名检测", "用户名可用！");
		} else {
			openModal("用户名检测", "用户名不可用！");
			$("#userCheckIcon").attr("class","icon-check-no");
		}
		$("#isCheckUserName").val(data);
	}, "json");
}

function validationUserName()
{
	var regExp = /^[a-zA-Z0-9\u4e00-\u9fa5]{5,20}$/;
	var username = $("#username").val();
	if(regExp.test(username))
	{
		changeCheckStatus("username");
		$("#userCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#userCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationPassWord()
{
	var regExp = /^[a-zA-Z0-9]{5,20}$/;
	var password = $("#userpassword").val();
	if(regExp.test(password))
	{
		changeCheckStatus("userpassword");
		$("#pwdCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#pwdCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationPassWordAgin()
{
	var password = $("#userpassword").val();
	var passwordAgin = $("#password_agin").val();
	if(passwordAgin==password)
	{
		changeCheckStatus("password_agin");
		$("#pwdaginCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#pwdaginCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationEmail()
{
	var regExp = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	var email = $("#email").val();
	if(regExp.test(email))
	{
		changeCheckStatus("email");
		$("#emailCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#emailCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationPhone()
{
	var regExp = /^1[3|4|5|8][0-9]\d{4,8}$/;
	var phone = $("#phone").val();
	if(regExp.test(phone))
	{
		changeCheckStatus("phone");
		$("#phoneCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#phoneCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationRealName()
{
	var regExp = /^[\u4e00-\u9fa5]{1,8}$/;
	var value = $("#real_name").val();
	if(regExp.test(value))
	{
		changeCheckStatus("real_name");
		$("#realNameCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#realNameCheckIcon").attr("class","icon-check-no");
		return false;
	}
}


function validationIdentityCard()
{
	var regExp = /^([1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3})|([1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4})$/;
	var value = $("#identity_card").val();
	if(regExp.test(value))
	{
		changeCheckStatus("identity_card");
		$("#identityCardCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#identityCardCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationSecurityPassword()
{
	var regExp = /^\d{10,20}$/;
	var value = $("#securityPassword").val();
	if(regExp.test(value))
	{
		changeCheckStatus("securityPassword");
		$("#securityPasswordCheckIcon").attr("class","icon-check-ok");
		return true;
	}
	else
	{
		$("#securityPasswordCheckIcon").attr("class","icon-check-no");
		return false;
	}
}

function validationSecurityCode()
{
	var url = root + "/checkSecurityCode.action";
	var value = $("#securityCode").val();
	$.post(url, {
		"code" : value
	}, function(data) {
		if(data=="yes")
		{
			changeCheckStatus("securityCode");
			$("#securityCodeCheckIcon").attr("class","icon-check-ok");
		}
		else
		{
			$("#securityCodeImg").click();
			$("#securityCodeCheckIcon").attr("class","icon-check-no");
		}
	}, "json");

}





