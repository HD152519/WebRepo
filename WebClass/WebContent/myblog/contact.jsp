<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Blog</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/set1.css" />
	<link href="../css/overwrite.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	
</head>
<body>
<br><br><br><br>
  
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="myblog.html"><span>My Blog</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation"><a href="myblog.html">Home</a></li>
						<li role="presentation"><a href="aboutme.html">About Me</a></li>
						<li role="presentation"><a href="dream.html">Dreams</a></li>
						<li role="presentation"><a href="love.html">Love</a></li>
						<li role="presentation" class="active"><a href="contact.html">Contact</a></li>						
					</ul>
				</div>
			</div>			
		</div>
	</nav>

        <div class="container">
            <div class="center">        
                <h2>Sgin Up</h2>             	
				<% UserVO user = (UserVO) session.getAttribute("user"); 
    				if(user == null){
    				%>
					<div class="buttons" id="login">
						<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin" method="post">Sign in</a>
					</div>
				</div>
				<%}else{ %>
				<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action="/WebClass/bloglogout" method="post">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    		</li>
	    		</ul>
				<%} %>
            </div> 
            <div class="row contact-wrap"> 
                <div class="col-md-8 col-md-offset-2">
                    <div id="errormessage"></div>                    
                </div>
            </div><!--/.row-->
        </div><!--/.container-->
 
	

	
	<div class="modal" id=myModal>
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">로그인 결과</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <p></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	
		<div class="container">
            <div class="center">        
                <h2>Register</h2>
            </div> 
                <div class="col-md-8 col-md-offset-2">
                    <div class="row">
          <div class="col-lg-12">
            <form id="RegisterForm" name="Register" >
              <div class="row">
                <div class="col-lg-12 text-center">
                  <div class="form">
                  <h1><input type="radio" name="class" value="1" checked>First Grade    <input type="radio" name="class" value="2">Second Grade    <input type="radio" name="class" value="3">Third Grade<br></h1>
					<br>
					<br>
                  </div>
                  <div class="form-group">
                   <h1>학번 : 
                    <select name="list">
					<option value="1"> 1</option>
					<option value="2"> 2</option>
					<option value="3"> 3</option>
					<option value="4"> 4</option>
					<option value="5"> 5</option>
					<option value="6"> 6</option>
					</select>
					</h1>
                  </div>
					<input class="form-control mr-sm-2" type="text" placeholder="Number" aria-label="Number" id="number" required data-validation-required-message="Please enter your number.">
					<input class="form-control mr-sm-2" type="text" placeholder="Name" aria-label="Name" id="name" required data-validation-required-message="Please enter your phone name.">
					<br><br>
                  
                  
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-xl" type="submit">Register</button>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      </div>
                    
 
    <script src="../js/jquery-2.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
	<script src="../js/wow.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
    <script src="../https://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="../js/functions.js"></script>
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
    <script src="../contactform/contactform.js"></script>
    <script src="../js/singup.js"></script>
    <script src ="../js/register.js"></script>
    
  
</body>
</html>