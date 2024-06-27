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
.dropbtn {
	/*  background-color: #4CAF50;
    color: white; */
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}
/* text-decoration: underline; */
.dropdown:hover .dropdown-content {
	display: block;
}
.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}
/* .dropdown:hover .dropbtn {background-color: #3e8e41;} */
</style>
<style>
    table,th,td,tr{
    padding:3px;
    text-align:center;
    }
    </style>
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
                    <li class="current_page_item"><div class="dropdown">
  <button class="dropbtn"><a href="index.html"
						accesskey="1" title=""><font style="color:red">Home</font></a></button></div></li>
					
					<li class="current_page_item"><div class="dropdown">
  <button class="dropbtn"><font style="color:red">COMPLAINTS</font></button>
  <div class="dropdown-content">
    <a href="ucomplaint.jsp"><font style="color:red">Add Complaints</font></a>
    <a href="ucomplaint1.jsp"><font style="color:red">View Complaints</font></a>
   <!--  <a href="ucomplaint2.jsp">View Reply for complanits</a> -->
    
  </div>
  </div></li>
					
					<li class="current_page_item"><div class="dropdown">
  <button class="dropbtn"><font style="color:red">CRIME REPORT</font></button>
  <div class="dropdown-content">
    <a href="ucrime.jsp"><font style="color:red">Add crime report</font></a>
    <a href="ucrime1.jsp"><font style="color:red">View crime reports</font></a>
    <!-- <a href="ucrime2.jsp">View Reply for crime reports</a> -->
    
  </div></div></li>
				<li class="current_page_item">	<div class="dropdown">
  <button class="dropbtn"><font style="color:red">MISSING PERSONS</font></button>
  <div class="dropdown-content">
    <a href="umissing.jsp"><font style="color:red">Add missing persons</font></a>
    <a href="umissing1.jsp"><font style="color:red">View missing persons</font></a>
   <a href="ufir.jsp"><font style="color:red">FIR Details</font></a>
    
  </div></div></li>
				<li class="current_page_item">	<div class="dropdown">
  <button class="dropbtn"><font style="color:red">VIEW DETAILS</font></button>
  <div class="dropdown-content">
    <a href="umostwanted.jsp"><font style="color:red">Most wanted criminals</font></a>
    
    <a href="uhot.jsp"><font style="color:red">Hot news</font></a>
    
  </div></div></li>
					<li class="current_page_item"><div class="dropdown">
  <button class="dropbtn"><a href="ueditcomp.jsp" accesskey="5" title=""><font style="color:red">EDIT PROFILE</font></a></button></div></li>
					<li><div class="dropdown">
  <button class="dropbtn"><a href="ueditc.jsp" accesskey="6" title=""><font style="color:red">EDIT COMPLAINT</font></a></button></div></li>
					<li><div class="dropdown">
  <button class="dropbtn"><a href="user.jsp" accesskey="7" title=""><font style="color:red">LOGOUT</font></a></button></div></li>
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
	
	
<body >
<!-- <div >
<center>

<p><h4 style="color:white"><b>ADMIN LOGIN</b></h4></p>
</font>
<form name="f1" action="creg1.jsp" method="POST" onsubmit="return validation">
<table>
<tr>
    <td style="color:white">User Name</td> &nbsp;<td> <input type="text" name="t1"></td> 
</tr>  
<tr>
    <td style="color:white">Password</td> <td><input type="password" name="t2"></td>
 </tr> 
 
 </table>
  
<input type="hidden" name="table" value="clogin">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="submit" value="submit">   <input type="submit" value="clear"><br/>

      </form>
</center><br/><br/><br/><br/><br/></div> -->
	
	
	</div> 
	<% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="red"><center><%=msg %></center></font>
<%}
%>
<%
String a=request.getParameter("t1");
String b=request.getParameter("t2");
String c=request.getParameter("t3");
String d=request.getParameter("t4");
String e=request.getParameter("t5");
String f=request.getParameter("t6");
System.out.println(a);
System.out.println(b);
System.out.println(c);
System.out.println(d);
System.out.println(e);
System.out.println(f);

%>
<div style="background:black">
	<form name="f1" action="creg1.jsp" method="get" onsubmit="return validation()">
<center>
 <div></br>
<h3 style="color:white"><b>Complaint Details</b></h3></br></br>
<table  id="ex">
<col width="130">
  <col width="80">
  <tr>
     <td style="color:white">id</td><td><input type="text" value=<%=f%> name="t6" readonly> </td>
 </tr> 
<tr>
     <td style="color:white">User name</td><td><input type="text" value=<%=a %> name="t1"> </td>
 </tr> 
 <tr>
     <td style="color:white"> Detail suspect</td><td><input type="text" value=<%=b%> name="t2"></td>
 </tr> 
  <tr>
       <td style="color:white">Description</td><td><textarea   name="t3"><%=c%></textarea></td>
 </tr>
 
 <tr >
       <td style="color:white">Date of complaint</td> <td><input type="text" width=100% value=<%=d%> name="t4"> </td>
 </tr>
 <tr>
     <td style="color:white">Type of crime</td><td><input type="text"  value=<%=e%> name="t5"></td>
 </tr> 
 
</table>

<input type="hidden" name="table" value="registration5">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="update">&nbsp;<input type="reset" value="clear">

</div>
</center></form>
	
	
	</center></br></br>
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
