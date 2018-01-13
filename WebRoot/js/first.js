function rename() 
{
    var x = document.getElementById("name").value;
    if (x == "") {
        document.getElementById("name").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("name").style.border = '1px solid #ccc';
	}
} 
function fname() 
{
    var x = document.getElementById("firstname").value;
    if (x == "") {
        document.getElementById("firstname").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("firstname").style.border = '1px solid #ccc';
	}
} 
function lname() 
{
    var x = document.getElementById("lastname").value;
    if (x == "") {
        document.getElementById("lastname").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("lastname").style.border = '1px solid #ccc';
	}
}
function m() 
{
    var x = document.getElementById("mobile").value;
    if (x == "" || isNaN(x) ) 
    {
        document.getElementById("mobile").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("mobile").style.border = '1px solid #ccc';
	}
}  
function usname() 
{
    var x = document.getElementById("username").value;
    if (x == "") {
        document.getElementById("username").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("username").style.border = '1px solid #ccc';
	}
} 
function pword() 
{
    var x = document.getElementById("password").value;
    if (x == "" || x.length<=4) {
        document.getElementById("password").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("password").style.border = '1px solid #ccc';
	}
} 
function use() 
{
    var x = document.getElementById("user").value;
    if (x == "") {
        document.getElementById("user").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("user").style.border = '1px solid #ccc';
	}
} 
function pa() 
{
    var x = document.getElementById("pass").value;
    if (x == "" || x.length<=4) {
        document.getElementById("pass").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("pass").style.border = '1px solid #ccc';
	}
} 
function cem() 
{
    var x = document.getElementById("email").value;
    if (x == "" ) {
        document.getElementById("email").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("email").style.border = '1px solid #ccc';
	}
} 
function reques() 
{
    var name= document.getElementById("name").value;
    var email= document.getElementById("email").value;
    var mobile= document.getElementById("mobile").value;
	var c=0;    

    if (name == "") {
        document.getElementById("name").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("name").style.border = '1px solid #ccc';
    }
	if (mobile == "" || isNaN(mobile) ) 
    {
        document.getElementById("mobile").style.border = '1px solid red';
    	c=1;
    }
    else{
        document.getElementById("mobile").style.border = '1px solid #ccc';
    }  
	if (email == "" ) {
        document.getElementById("email").style.border = '1px solid red';
       c=1;
    }
    else{
        document.getElementById("email").style.border = '1px solid #ccc';
    }  
    if(c==1){
    	return false;
    }
}
function validin() 
{
    var username= document.getElementById("username").value;
    var pass = document.getElementById("password").value;
	var c=0;    

    if (username == "") {
        document.getElementById("username").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("username").style.border = '1px solid #ccc';
    }
    if (pass == "" || pass.length <= 4) {
        document.getElementById("password").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("password").style.border = '1px solid #ccc';
    }  
    if(c==1){
    	return false;
    }
}
function validup() 
{
    var first = document.getElementById("firstname").value;
    var last = document.getElementById("lastname").value;
    var username= document.getElementById("user").value;
    var pass = document.getElementById("pass").value;
    var mobile = document.getElementById("mobile").value;
    var cemail = document.getElementById("email").value;
	var c=0;    



    if (first == "") {
        document.getElementById("firstname").style.border = '1px solid red';
    	c=1;
    }
    else{
        document.getElementById("firstname").style.border = '1px solid #ccc';
    }
    if (last == "") {
        document.getElementById("lastname").style.border = '1px solid red';
    	c=1;
    }
    else{
        document.getElementById("lastname").style.border = '1px solid #ccc';
    }
    if (username == "") {
        document.getElementById("user").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("user").style.border = '1px solid #ccc';
    }
    if (pass == "" || pass.length <= 4) {
        document.getElementById("pass").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("pass").style.border = '1px solid #ccc';
    }
  
    if (mobile== "" || isNaN(mobile) ) {
        document.getElementById("mobile").style.border = '1px solid red';
    	c=1;
    }
    else{
        document.getElementById("mobile").style.border = '1px solid #ccc';
    }
    if (cemail== "" ) {
        document.getElementById("email").style.border = '1px solid red';
    	c=1;
    }
    else{
        document.getElementById("email").style.border = '1px solid #ccc';
    }
    if(c==1){
    	return false;
    }
}

function balcon() 
{
    var x = document.getElementById("balcony").value;
    if (x == "") {
        document.getElementById("balcony").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("balcony").style.border = '1px solid #ccc';
	}
}
function p() 
{
    var x = document.getElementById("pool").value;
    if (x == "") {
        document.getElementById("pool").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("pool").style.border = '1px solid #ccc';
	}
}
function bath() 
{
    var x = document.getElementById("bathroom").value;
    if (x == "") {
        document.getElementById("bathroom").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("bathroom").style.border = '1px solid #ccc';
	}
}
function bed() 
{
    var x = document.getElementById("bedroom").value;
    if (x == "") {
        document.getElementById("bedroom").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("bedroom").style.border = '1px solid #ccc';
	}
}
function kit() 
{
    var x = document.getElementById("kitchen").value;
    if (x == "") {
        document.getElementById("kitchen").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("kitchen").style.border = '1px solid #ccc';
	}
}
function gar() 
{
    var x = document.getElementById("garage").value;
    if (x == "") {
        document.getElementById("garage").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("garage").style.border = '1px solid #ccc';
	}
}
function pid() 
{
    var x = document.getElementById("propertyid").value;
    if (x == "") {
        document.getElementById("propertyid").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("propertyid").style.border = '1px solid #ccc';
	}
} 
function a() 
{
    var x = document.getElementById("area").value;
    if (x == "" || isNaN(x) || (x.length > 5) ) 
    {
        document.getElementById("area").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("area").style.border = '1px solid #ccc';
	}
} 
function add() 
{
    var x = document.getElementById("address").value;
    if (x == "") {
        document.getElementById("address").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("address").style.border = '1px solid #ccc';
	}
}
function ci() 
{
    var x = document.getElementById("city").value;
    if (x == "") {
        document.getElementById("city").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("city").style.border = '1px solid #ccc';
	}
} 
function pri() 
{
    var x = document.getElementById("price").value;
    if (x == "" || isNaN(x) ) 
    {
        document.getElementById("price").style.border = '1px solid red';
        return false;
    }
	else{
		document.getElementById("price").style.border = '1px solid #ccc';
	}
} 
function aproperty() 
{
    var balcony = document.getElementById("balcony").value;
    var pool = document.getElementById("pool").value;
    var bathroom = document.getElementById("bathroom").value;
    var bedroom = document.getElementById("bedroom").value;
    var kitchen = document.getElementById("kitchen").value;
    var garage = document.getElementById("garage").value;
    var propertyid = document.getElementById("propertyid").value;
    var area = document.getElementById("area").value;
    var address = document.getElementById("address").value;
    var city = document.getElementById("city").value;
    var price = document.getElementById("price").value;
    var c=0;    


    if (balcony == "") {
        document.getElementById("balcony").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("balcony").style.border = '1px solid #ccc';
    }

    if (pool == "") {
        document.getElementById("pool").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("pool").style.border = '1px solid #ccc';
    }
    if (bathroom == "") {
        document.getElementById("bathroom").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("bathroom").style.border = '1px solid #ccc';
    }
    if (bedroom == "") {
        document.getElementById("bedroom").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("bedroom").style.border = '1px solid #ccc';
    }
    if (kitchen == "") {
        document.getElementById("kitchen").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("kitchen").style.border = '1px solid #ccc';
    }
    if (kitchen == "") {
        document.getElementById("garage").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("garage").style.border = '1px solid #ccc';
    }
    if (propertyid == "") {
        document.getElementById("propertyid").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("propertyid").style.border = '1px solid #ccc';
    }
    if (area == "" || isNaN(area) || (area.length > 5) ) 
    {
        document.getElementById("area").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("area").style.border = '1px solid #ccc';
    }
    if (address == "") {
        document.getElementById("address").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("address").style.border = '1px solid #ccc';
    }
    if (city == "") {
        document.getElementById("city").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("city").style.border = '1px solid #ccc';
    }
    if (price == "" || isNaN(price) ) 
    {
        document.getElementById("price").style.border = '1px solid red';
        c=1;
    }
    else{
        document.getElementById("price").style.border = '1px solid #ccc';
    }

    if(c==1){
    	return false;
    }
}
