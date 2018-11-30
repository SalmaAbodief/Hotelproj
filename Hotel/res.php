<html>
<head>
<title>
My Hotel WebSite
</title>
<style type="text/css">
h1,h2{
	text-align: center;
	color:white;
}
.img{}
.content{position:absolute; top:130;right:750px;}
body{
	
	background-repeat:no-repeat;
	background-color:brown;
	background-position: center center;
}

</style>
<body>
<div class="img">
<img src="room2-min.jpg" width="1400px">
</div>
<div class="content">
<h1> M y    H o t e l </h1>
<h2><em>Feel as your Home</em></h2>
<form action="index.html" method="post">
<table width="70%" border="10" cellpadding="4">
<tr>
<td width="30%">Name : </td>
<td width="70%"><input type="text" size="70"/></td>
</tr>
<tr>
<td width="30%">ID : </td>
<td width="70%"><input type="text"size="70" /></td>
</tr>
<tr>
<td width="30%">Check in : </td>
<td width="70%"><input type="datetime" size="70"/></td>
</tr>
<tr>
<td width="30%">Check out : </td>
<td width="70%"><input type="datetime" size="70"/></td>
</tr>
<tr>
<td width="30%">Room_Type : </td>
<td width="70%"><select name="type">
<option value="delux single">delux single</option>
<option value="delux double">delux double</option>
<option value="ordinary single">ordinary single</option>
<option value="ordinary double">ordinary double</option>
</select></td>
</tr></br></br></br></br></br>
</table>
<input type="submit" value="confirm" />
</form> 
</div>
</body>
</head>
</html>