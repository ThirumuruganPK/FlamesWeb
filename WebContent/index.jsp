<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="container">
  <div class="jumbotron">
    <h1>Flames Web Application</h1>      
    <p>Check the Flames with who are your Crush..?</p>
   </div>    
</div>
<div class="container">
  <form class="form-horizontal" action="displaymessage.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Your Name:</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" id="email" placeholder="Enter Your Name" name="yourname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Your Lover Name:</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter Your Lover Name" name="yourlovername">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-5">
        <button type="submit" class="btn btn-danger">Submit</button> 
        <button type="reset" class="btn btn-danger">Reset</button>
      </div>
    </div>
  </form>
</div>
</body>
</html>