function showHint(str)
{
	document.getElementById("btnOK").disabled = true;
	var xmlhttp;
	var name = str;
	var reg_express = /^[a-zA-Z]+\d*/;
	if (str == "") {
		document.getElementById("txtHint").innerHTML="* can not be empty.";
		document.getElementById("txtHint").style.color = "red";
		return;
	}
	if (!reg_express.test(str)) {
		document.getElementById("txtHint").innerHTML="* invalid name, it must begin with a letter.";
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
		   		}
			}
		    
	  }
	xmlhttp.open("GET","check_name?name="+name,true);
	xmlhttp.send();
}

function checkPWD(str)
{
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
	var pwd_str = document.getElementById("pwd").value;
	if (str == "" || str != pwd_str) {
		document.getElementById("confirmHint").innerHTML="* doesn't match!";
		document.getElementById("confirmHint").style.color = "red";
		return;
	}
	else {
		document.getElementById("confirmHint").innerHTML="* ok!";
		document.getElementById("confirmHint").style.color = "green";
		document.getElementById("btnOK").disabled = false;
		return;
	}
}
