<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.flamesweb.businesslogic.Flames" %>
<!DOCTYPE html>
<html>
<head>
<title>Flames</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/generalStyle.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- BOOTSTRAP SCRIPT MAX CDN  -->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- END BOOTSTRAP SCRIPT MAX CDN  -->
</head>
<body class="body-bg">
<%@ include file="navbar.jsp" %>
<%!
public static String display(char msg){
	switch(msg){
	case 'F':
		/* System.out.println("She Will became a " +" Friend"); */
		String f="Friend";
		return f;
	case 'L':
		String l="Lover";
		return l;
	case 'A':
		String a="Affection";
		return a;
	case 'M':
		String m="Marriage";
		return m;
	case 'E':
		String e="Enime";
		return e;
	case 'S':
		String s="Sister";
		return s;
	default:
		String n="None";
		return n;

	}
}
%>
<% 
String boyname=request.getParameter("yourname");
String girlname=request.getParameter("yourlovername");
int count=Flames.gettingNames(boyname, girlname);
char flameletter = Flames.getflamesletters(count);
String msg=display(flameletter);
%>
<div class="container">
  <div class="jumbotron">
  	<h1><% out.write(boyname+" and "+girlname +" "+"will");%> <b class="msgclr"> <%= msg+"."%></b></h1>      
   </div>    
</div>
</body>
</html>