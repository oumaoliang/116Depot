function showHint(str)
{
	var flag = false;
	document.getElementById("btnOK").disabled = true;
	var xmlhttp;
	var name = str;
	var reg_express = /^[a-zA-Z]+(\d*[a-zA-Z]*)*$/;
	var str_pwd = document.getElementById("pwd").value;
	var str_pwdConfirm = document.getElementById("pwd_confirm").value;
	if (str == "") {
		document.getElementById("txtHint").innerHTML="* can not be empty.";
		document.getElementById("txtHint").style.color = "red";
		return;
	}
	if (!reg_express.test(str)) {
		document.getElementById("txtHint").innerHTML="* invalid characters(only digits and letters), or you must begin with a letter,eg. dave123.";
		document.getElementById("txtHint").style.color = "red";
		return;
	}
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
	 }
	else
	  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    	var reg = /in use/;
		    	var result = reg.exec(xmlhttp.responseText);
		    	if (result == "in use")	{
		    		document.getElementById("txtHint").innerHTML="* I'm sorry, but "+name + " is in use.";
		    		document.getElementById("txtHint").style.color = "red";
		    	}
		    	else {
		    		document.getElementById("txtHint").innerHTML="* congratulatons, " + name + " is avaliable!";
		    		document.getElementById("txtHint").style.color = "green";
		    		if ((str_pwd == str_pwdConfirm) && (str_pwd != "")) {
		    			document.getElementById("btnOK").disabled = false;
		    			return;
		    		}
		    		return true;
		   		}
			}
		    
	  }
	xmlhttp.open("GET","check_name?name="+name,true);
	xmlhttp.send();
}

function checkPWD(str)
{
	document.getElementById("btnOK").disabled = true;
	if (str == "") {
		document.getElementById("PWDHint").innerHTML="* can not be empty!";
		document.getElementById("PWDHint").style.color = "red";
		return;
	}
	else {
		document.getElementById("PWDHint").innerHTML="* ok!";
		document.getElementById("PWDHint").style.color = "green";
		return;
	}
}

function pwdConfirm(str)
{
	document.getElementById("btnOK").disabled = true;
	var pwd_str = document.getElementById("pwd").value;
	if (str == "" || str != pwd_str) {
		document.getElementById("confirmHint").innerHTML="* doesn't match!";
		document.getElementById("confirmHint").style.color = "red";
		return;
	}
	else {
		document.getElementById("confirmHint").innerHTML="* ok!";
		document.getElementById("confirmHint").style.color = "green";
		if (showHint(document.getElementById("fname").value))
			document.getElementById("btnOK").disabled = false;
		return;
	}
}
