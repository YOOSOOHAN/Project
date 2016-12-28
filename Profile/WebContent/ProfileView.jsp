<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
div#div1 {
	color: brown;
}

div#div2 {
	color: green;
}

input {
	border: none;
	border-right: 0px;
	border-top: 0px;
	boder-left: 0px;
	boder-bottom: 0px;
}

input#exp {
	width: 700px;
}

td#h {
	font-size: 18pt
}
</style>
<script type="text/javascript">
	var expBlock = 0;
	var objBlock = 0;
	var actBlock = 0;
	var skillBlock = 0;
	var volBlock = 0;
	function addExp(obj) {
		if (obj.value == "add" && expBlock < 6) {
			expBlock++;
			document.getElementById("ex" + expBlock).style.display = 'block';
			expBlock++;
			document.getElementById("ex" + expBlock).style.display = 'block';
			//expBlock++;
			//document.getElementById("ex"+expBlock).style.display='block';
		}
		if (obj.value == "delete" && expBlock > 0) {
			document.getElementById("exp" + expBlock).value = "";
			document.getElementById("ex" + expBlock).style.display = 'none';
			expBlock--;
			document.getElementById("exp" + expBlock).value = "";
			document.getElementById("ex" + expBlock).style.display = 'none';
			expBlock--;
			//document.getElementById("exp"+expBlock).value="";
			//document.getElementById("ex"+expBlock).style.display='none';
			//expBlock--;

		}
	}
	function addObj(obj) {
		if (obj.value == "add" && objBlock < 2) {
			objBlock++;
			document.getElementById("ob" + objBlock).style.display = 'block';
		}
		if (obj.value == "delete" && objBlock > 0) {
			document.getElementById("obj" + objBlock).value = "";
			document.getElementById("ob" + objBlock).style.display = 'none';
			objBlock--;
		}
	}
	function addAct(obj) {
		if (obj.value == "add" && actBlock < 5) {
			actBlock++;
			document.getElementById("ac" + actBlock).style.display = 'block';
		}
		if (obj.value == "delete" && actBlock > 0) {
			document.getElementById("act" + actBlock).value = "";
			document.getElementById("ac" + actBlock).style.display = 'none';
			actBlock--;
		}
	}

	function addVol(obj) {

		if (obj.value == "add" && volBlock < 2) {
			volBlock++;
			document.getElementById("vol" + volBlock).style.display = 'block';
		}
		if (obj.value == "delete" && skillBlock > 0) {
			document.getElementById("volunteer" + volBlock).value = "";
			document.getElementById("vol" + volBlock).style.display = 'none';
			volBlock--;
		}
	}
	var flag = true;
	function inputFocus() {
		if (flag == true) {
			document.getElementById("name").value = '';
			flag = false;
		}
	}
	function inputBlur() {
		if (document.getElementById("name").value == "") {
			document.getElementById("name").value = 'NAME';
			flag = true;
		}
	}
</script>
<meta charset="UTF-8">
<title>Resume</title>

<h1 align="center">
	<input type="text" id="name" align="center" value="NAME"
		onfocus="inputFocus()" onblur="inputBlur()"
		style="font-size: 30pt; height: 40pt; width: 400pt; text-decoration: underline; text-align: center;"
		onCLICK>
</h1>
</head>
<body>
	<form name=form1 method="post">
		<div style="font-size: 10; color: black;">
			<table>
				<tr>
					<td id="h">•Address :</td>
					<td><input type="text" name="address" size="100"></td>
				</tr>
				<tr>
					<td id="h">•E-mail :</td>
					<td><input type="email" name="e-mail" size="100"></td>
				</tr>
			</table>
			<hr color="black" size="2" width="100%">
			<br>

		</div>

		<div id="div1">
			<table>
				<tr>
					<td id="h">▪<U>Objective</U> <input type="button" id="add"
						name="obj" value="add" onClick="addObj(this)">&nbsp; <input
						type="button" id="delete" name="obj" value="delete"
						onClick="addObj(this)"></td>
				</tr>
				<tr id="ob1" style="display: none">
					<td width="auto">&nbsp;&nbsp;- <input type="text" id="obj1"
						name="ob1" size="100"></td>
				</tr>
				<tr id="ob2" style="display: none">
					<td width="auto">&nbsp;&nbsp;- <input type="text" id="obj2"
						name="ob2" size="100"></td>
				</tr>
			</table>
		</div>
		<br>
		<div id="div2">
			<table>
				<tr>
					<td id="h">▪<U>Experiences</U>&nbsp; <input type="button"
						id="add" name="exp" value="add" onClick="addExp(this)">&nbsp;
						<input type="button" id="delete" name="exp" value="delete"
						onClick="addExp(this)"></td>

				</tr>
				<tr id="ex1" style="display: none">
					<td width="auto">&nbsp;- <input type="month""> ~ <input
						type="month"> <input type="text" id="exp1" name="exp1"
						size="100"></td>
				</tr>
				<tr id="ex2" style="display: none">
					<td width="auto">&nbsp;&nbsp;&nbsp;&nbsp;▪ <input type="text"
						id="exp2" name="exp1detail1" size="100"></td>
				</tr>
				<!--<tr id="ex3"style="display:none">
				<td width="auto">&nbsp;&nbsp;▪ <input type="text"id="exp3" name="exp1detail2" size="100"></td>-->
				</tr>
				<tr id="ex3" style="display: none">
					<td width="auto">&nbsp;- <input type="month"> ~ <input
						type="month"> <input type="text" id="exp3" size="100"></td>
				</tr>
				<tr id="ex4" style="display: none">
					<td width="auto">&nbsp;&nbsp;&nbsp;&nbsp;▪ <input type="text"
						id="exp4" name="exp2detail1" size="100"></td>
				</tr>
				<!--<tr id="ex6"style="display:none">
				<td width="auto">&nbsp;&nbsp;▪ <input type="text" id="exp6"name="exp2detail2" size="100"></td>-->
				</tr>
				<tr id="ex5" style="display: none">
					<td width="auto">&nbsp;- <input type="month"> ~ <input
						type="month"> <input type="text" id="exp5" name="exp3"
						size="100"></td>
				</tr>
				<tr id="ex6" style="display: none">
					<td width="auto">&nbsp;&nbsp;&nbsp;&nbsp;▪ <input type="text"
						id="exp6" name="exp3detail1" size="100"></td>
				</tr>
				<!--  <tr id="ex9"style="display:none">
				<td width="auto">&nbsp;&nbsp;▪ <input type="text"id="exp9" name="exp3detail2" size="100"></td>-->
				</tr>
			</table>
		</div>
		<br>
		<div>
			<tag>
			<table>
				<tr>
					<td id="h">▪<U>Education</U></td>
				</tr>
				<tr>
					<td width="auto" align="right">School:</td>
					<td><input type="text" name="school"></td>
					<td>City/State of Country: <input size=7 type="text"
						name="city">/<input size=10type= "text" name="country"></td>
				</tr>
				<tr>
					<td align="right">Major/GPA/Honors:</td>
					<td><input size=6 type="text" name="major">/<input
						style="width: 50px" type="number" name="GPA">/<input
						size=4 type="text" name="Honors"></td>
					<td width="auto" align="left">Date: <input type="date"
						min="1990-01-01" max="2020-12-31">~<input type="date"
						min="1990-01-01" max="2020-12-31"></td>
				</tr>
			</table>
		</div>
		</tag>
		<br>
		<div>
			<table>
				<tr>
					<td id="h">▪<U>Activities</U>&nbsp; <input type="button"
						id="add" name="act" value="add" onClick="addAct(this)">&nbsp;
						<input type="button" id="delete" name="act" value="delete"
						onClick="addAct(this)"></td>
				</tr>
				<tr id="ac1" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="act1"
						name="act1" size="100"></td>
				</tr>
				<tr id="ac2" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="act2"
						name="act2" size="100"></td>
				</tr>
				<tr id="ac3" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="act3"
						name="act3" size="100"></td>
				</tr>
				<tr id="ac4" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="act4"
						name="act4" size="100"></td>
				</tr>
				<tr id="ac5" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="act5"
						name="act5" size="100"></td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<table>
				<tr>
					<td id="h">▪<U>Skills</U>&nbsp;
					</td>
				</tr>
				<tr id="sk1">
					<td width="auto">&nbsp;•Language : <input type="text"
						id="skill1" name="skill1" size="100"></td>
				</tr>
				<tr id="sk2">
					<td width="auto">&nbsp;•Software : <input type="text"
						id="skill2" name="skill2" size="100"></td>
				</tr>
				<tr id="sk3">
					<td width="auto">&nbsp;•ETC : <input type="text" id="skill3"
						name="skill3" size="100"></td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<table>
				<tr>
					<td id="h">▪<U>Volunteer Works</U>&nbsp; <input type="button"
						id="add" name="vol" value="add" onClick="addVol(this)">&nbsp;
						<input type="button" id="delete" name="vol" value="delete"
						onClick="addVol(this)"></td>
				</tr>
				<tr id="vol1" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="volunteer1"
						name="volunteer1" size="100"></td>
				</tr>
				<tr id="vol2" style="display: none">
					<td width="auto">&nbsp;• <input type="text" id="volunteer2"
						name="volunteer2" size="100"></td>
				</tr>

			</table>

		</div>
		<br>
	</form>
</body>
</html>