<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Project358.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link type="text/css" rel="stylesheet" href="Logo.css" />
    <link type="text/css" rel="stylesheet" href="Menue.css" />
<style>


.labelPosition {
position: absolute;
left: 150px;
}

input[type=text], input[type=password], input[type=email] {
  width: 800px;
  height:20px;
  padding: 40px;
  margin-top:5px;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  position:relative;
  top: 20px;
  left:200px;
  border-style:dashed;
  
}

button {
  background-color:black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  width: 800px;
  height:60px;
  position: relative;
  top: 5px;
  left: 200px;
  
}

.container {
  padding: 16px;
}

.devPos {
position: absolute;
top:500px;
left: 150.5px;

}



footer {
background-color:black;
position:relative;
width: 1520px;
height: 200px;
top:800px;
right:8px;
}
    
</style>

<script>
    function check() {
        //aler("hello");
        var fname_value = document.my_form.Fname.value;
        var Lname_value = document.my_form.Lname.value;
        var email_value = document.my_form.email.value;
        var Password_value = document.my_form.psw.value;
        var RPassword_value = document.my_form.rpsw.value;


        if (fname_value == "", Lname_value == "", email_value == "", Password_value == "", RPassword_value == "") { alert("Plaess you must enter all the informaion"); }


        else if (!isNaN(fname_value) || !isNaN(Lname_value)) { alert("Name cannot be number."); }


        else if (fname_value.length < 2 || Lname_value < 2) { alert("Name should be at least 3 characters."); }

        else if (fname_value.indexOf("_") >= 0 || Lname_value.indexOf("_") >= 0) { alert("Name can not have special character"); }

        else if (Password_value != RPassword_value) { alert("password and Repeat Password should be same value"); }

        else if (Password_value.length < 6) { alert("Password should be at least 6 characters."); }

    }
</script>


</head>


<body>
    <div class="hdive">
        <h1 class="h1_title" align>Log in</h1>
    </div>

    <div class="navbar">
        <a href="Home-Page.html">Home</a>
        <a href="Sign Up.html">Sign Up</a>

    </div>

<iframe src="Privacy and terms.html" width="800" height="300" style="background-color:white; position:relative; left:340px; margin-top:10px;"></iframe>
<div class="devPos">


<form name="my_form">

    <label for="Fname"><b></b></label>
    <input type="text" placeholder="Frist name" name="Fname" value="" required>
    <br/><br/>
	
	<label for="Lname"><b></b></label>
    <input type="text" placeholder="last name" name="Lname" required >
    <br/><br/> 

<label for="email"><b></b></label>
    <input type="email" placeholder="Enter Email" name="email" required >
    <br/><br/> 
    <label for="psw"><b></b></label>
    <input type="password" placeholder="Enter Password" name="psw" required >
     <br/><br/>
    <label for="psw-repeat"><b></b></label>
    <input type="password" placeholder="Repeat Password" name="rpsw" required>
    <br/><br/>
	
	<div class="clearfix">
	
      <button type="submit" class="signupbtn" onclick="check();">Sign Up</button>
    </div>
	</form>
	</div>
	

</body>







</html>