<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
    table,th,td,tr{
    padding:3px;
    
    }
    </style>
    <script>

function validation() {
		var a = document.f1.t5.value;
		if (a == "") {
			alert("Please select gender")
			document.f1.t5.focus();
			return false;
		}
		
		var d = document.f1.t7.value;
		if (d == "") {
			alert("Please Enter adhar number ")
			document.f1.t7.focus();
			return false;
		}
		if (isNaN(d)) {
			alert("Adhar  Number Must be Numaric");
			document.f1.t7.focus()
			return false;
		}
		

		if (d.length!=12) {
			alert("Adhar number  Must contains 12 digits");
			document.f1.t7.focus();
			return false;
		}

		var b = document.f1.t1.value;
		if (b == "") {
			alert("Please Enter user Name")
			document.f1.t2.focus();
			return false;
		}
		
		var c = document.f1.t6.value;
		if (c == "") {
			alert("Please Enter Your Address")
			document.f1.t6.focus();
			return false;
		}
		var q = document.f1.t7.value;
		if (q == "") {
			alert("Please Enter colony")
			document.f1.t7.focus();
			return false;
		}
		
		var e = document.f1.t3.value;
		if (e == "") {
			alert("Please Enter Your Email ")
			document.f1.t3.focus();
			return false;
		}
		if (e.indexOf("@", 0) < 0) {
			alert("Please enter a valid e-mail address.");
			document.f1.t3.focus();
			return false;
		}
		if (e.indexOf(".", 0) < 0) {
			alert("Please enter a valid e-mail address.");
			document.f1.t3.focus();
			return false;
		}
		var f = document.f1.t2.value;
		if (f == "") {
			alert("Please Enter Your Password ")
			document.f1.t2.focus();
			return false;
		}
		var g = document.f1.t4.value;
		if (g == "") {
			alert("Please Enter Your Mobile Number ")
			document.f1.t4.focus();
			return false;
		}
		if (isNaN(g)) {
			alert("Mobile Number Must be Numaric");
			document.f1.t4.focus()
			return false;
		}
		if (g.length != 10) {
			alert("Mobile Number Must Be 10 Numbers");
			document.f1.t4.focus();
			return false;
		}

		
		
		return true;
	}
</script>
</head>

<body>

    <div class="brand"><i>Online Crime File Management</i></div>
    

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav">
                    <li class="current_page_item"><a href="index.html"
						accesskey="1" title=""><h4 style="color:red"><b>Home</b></h4></a></li>
					<li><a href="admin.jsp" accesskey="5" title=""><h4 style="color:red"><b>Admin</b></h4></a></li>
					<li><a href="visitors.jsp" accesskey="4" title=""><h4 style="color:red"><b>Visitors</b></h4></a></li>
					<li><a href="user.jsp" accesskey="5" title=""><h4 style="color:red"><b>Users</b></h4></a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                         <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="img/Crime.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="img/download.jpg" alt="">
                            </div> 
                            <div class="item">
                                <img class="img-responsive img-full" src="img/images.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <!-- <h2 class="brand-before">
                        <small>Welcome to</small>
                    </h2>
                    <h1 class="brand-name">Business Casual</h1>
                    <hr class="tagline-divider">
                    <h2>
                        <small>By
                            <strong>Start Bootstrap</strong>
                        </small>
                    </h2> -->
                </div>
            </div>
        </div>

       <!--  <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Build a website
                        <strong>worth visiting</strong>
                    </h2>
                    <hr>
                    <img class="img-responsive img-border img-left" src="img/intro-pic.jpg" alt="">
                    <hr class="visible-xs">
                    <p>The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</p>
                    <p>A huge thanks to <a href="http://join.deathtothestockphoto.com/" target="_blank">Death to the Stock Photo</a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                </div>
            </div>
        </div> -->

        <!-- <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Beautiful boxes
                        <strong>to showcase your content</strong>
                    </h2>
                    <hr>
                    <p>Use as many boxes as you like, and put anything you want in them! They are great for just about anything, the sky's the limit!</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                </div>
            </div>
        </div> -->

    </div>
    <div>
	
	<% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="red"><center><%=msg %></center></font>
<%}
%>
<body >
<div >
<center>

<p><h4 style="color:white"><b>VISITOR REGISTRATION</b></h4></p>
</font>
<form name="f1" action="creg1.jsp" method="POST" onsubmit="return validation()">
<center>
 <div>

<table cellspacing="10" style="margin-left:1%">
<tr>
     <td style="color:white">Name</td><td><input type="text" name="t1"> </td>
 </tr> 
 <tr>
     <td style="color:white">Password</td><td><input type="password" name="t2"></td>
 </tr> 
 <tr>
       <td style="color:white">mail id</td><td><input type="text" name="t3"></td> 
 </tr> 
 <tr>
       <td style="color:white">Mobile no</td><td><input type="text" name="t4"></td> 
 </tr>
 
 <tr>
      <td style="color:white" width=50%>Gender</td><td><select name="t5">
<option value="male" >male</option>
<option value="female">female</option>
</select> </td>
</tr> 
 <tr>
       <td style="color:white">Address:</td><td><input type="text" name="t6"> </td>
 </tr> 
 <tr>
      <td style="color:white">colony:</td><td><input type="text" name="t7"> </td>
</tr>
</table>
<input type="hidden" name="table" value="registration7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit">&nbsp;<input type="submit" value="clear">

</div>
</center></form>
</center><br/><br/><br/><br/><br/></div>
	
	
	</div> 
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
