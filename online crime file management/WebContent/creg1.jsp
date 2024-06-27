<!DOCTYPE html>
<%@page import="conn.Dbconn"%>
<%@page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.util.*"%>
<%@ page import="conn.insert"%>

<html lang="en">
  <head>

    <title>Welcome To Resort Management System</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

  </head>
  
  <style>
  
  .header{width:100%;height:101px;float:left; /* background-color:violet */;text-align:center;}
  .topnav {
  overflow: hidden;width:100%;
}

.topnav a {
  float:left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border-bottom: 3px solid transparent;
}


.topnav a:hover {
  border-bottom: 3px solid red;
}

.topnav a.active {
  border-bottom: 3px solid red;
}
.navbar-header{width:100%;}
.navbar-header h3{padding-left:22px;}
.navbar-header a{text-decoration:none !important}
.banner{width:100%;height:375px;float:left;}
.menuclass{width:35%;margin:auto;}
table,tr,th,td
{
border:1px solid gray;
text-align:center;

}


  </style>
 
  <body>
  
	<div class="header" role="navigation">
	<div>
			
				<h3 style="color:blue">CLOUD COMPUTING</h3>
			</div>

			<div class="topnav" style="background:-webkit-radial-gradient(red,yellow)">
			<center class="menuclass">
  <a  href="index.html">HOME</a>
  <a href="cprofile.jsp">view profile</a>
  <a href="cfiles.jsp">view files</a>
  <a href="cstatus.jsp">status</a>
  <a href="clogin.jsp">logout</a>
   </center>
   </div>

<%

if(request.getParameter("table").equals("registration"))
{
String name = request.getParameter("t2");
String password = request.getParameter("t3");
String mobile = request.getParameter("t4");
String mail = request.getParameter("t5");
String dob = request.getParameter("t6");
String add = request.getParameter("t8");

int a = insert.oreg(name, password ,mobile ,mail,dob,add);

if(a>0){
	response.sendRedirect("ologin.jsp?msg=registration completed successfully");
}
else{
	response.sendRedirect("oreg.jsp?msg=owner details already exist");
}
}
if(request.getParameter("table").equals("ologin"))
{
String name = request.getParameter("t1");
session.setAttribute("name",name);
String password = request.getParameter("t2");

String b = insert.ologin(name, password);
session.setAttribute("id",b);

if(b!=null){
	response.sendRedirect("vhome.jsp?msg=login successfully");
}
else{
	response.sendRedirect("visitors.jsp?msg=invalid credentials");
}
}
if(request.getParameter("table").equals("registration1"))
{
String name = request.getParameter("t1");
String password = request.getParameter("t2");
String mail = request.getParameter("t3");
String phone = request.getParameter("t4");
String gender = request.getParameter("t5");
String add = request.getParameter("t6");
String colony = request.getParameter("t7");

int a = insert.ureg(name, password ,mail ,phone,gender,add,colony);

if(a>0){
	response.sendRedirect("user.jsp?msg=registration completed successfully");
}
else{
	response.sendRedirect("ureg.jsp?msg=user details already exist");
}
}
if(request.getParameter("table").equals("registration7"))
{
String name = request.getParameter("t1");
String password = request.getParameter("t2");
String mail = request.getParameter("t3");
String phone = request.getParameter("t4");
String gender = request.getParameter("t5");
String address = request.getParameter("t6");
String colony = request.getParameter("t7");

int a = insert.vreg(name, password ,mail ,phone,gender,address,colony);

if(a>0){
	response.sendRedirect("visitors.jsp?msg=registration completed successfully");
}
else{
	response.sendRedirect("vreg.jsp?msg=user details already exist");
}
}
if(request.getParameter("table").equals("ulogin"))
{
String name = request.getParameter("t1");
session.setAttribute("name1",name);
String password = request.getParameter("t2");
String b = insert.ulogin(name, password);
session.setAttribute("uid",b);
if(b!=null){
	response.sendRedirect("uhome.jsp?msg=login successfully");
}
else{
	response.sendRedirect("user.jsp?msg=invalid credentials");
}
}
if(request.getParameter("table").equals("hist1"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.hist1(id);

if(b==1){
	response.sendRedirect("history1.jsp?msg=case completed successfully");
}
else{
	response.sendRedirect("history1.jsp?msg=case not completed");
}
}
if(request.getParameter("table").equals("hist2"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.hist2(id);

if(b==1){
	response.sendRedirect("history2.jsp?msg=case completed successfully");
}
else{
	response.sendRedirect("history2.jsp?msg=case not completed");
}
}
if(request.getParameter("table").equals("hist3"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.hist3(id);

if(b==1){
	response.sendRedirect("history3.jsp?msg=case completed successfully");
}
else{
	response.sendRedirect("history3.jsp?msg=case not completed");
}
}
if(request.getParameter("table").equals("fir1"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.fir1(id);

if(b==1){
	response.sendRedirect("afir.jsp?msg=case completed successfully");
}
else{
	response.sendRedirect("afir.jsp?msg=case not completed");
}
}
if(request.getParameter("table").equals("ahot1"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.ahot1(id);

if(b==1){
	response.sendRedirect("ahot1.jsp?msg=news deleted successfully");
}
else{
	response.sendRedirect("ahot1.jsp?msg=news not deleted");
}
}

if(request.getParameter("table").equals("awan"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.awan(id);

if(b==1){
	response.sendRedirect("aviewwanted.jsp?msg=person details deleted successfully");
}
else{
	response.sendRedirect("aviewwanted.jsp?msg=person details not deleted");
}
}
if(request.getParameter("table").equals("del1"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.del1(id);

if(b==1){
	response.sendRedirect("ucomplaint1.jsp?msg= deleted successfully");
}
else{
	response.sendRedirect("ucomplaint1.jsp?msg= not deleted");
}
}
if(request.getParameter("table").equals("del2"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.del2(id);

if(b==1){
	response.sendRedirect("ucrime1.jsp?msg= deleted successfully");
}
else{
	response.sendRedirect("ucrime1.jsp?msg= not deleted");
}
}
if(request.getParameter("table").equals("del3"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.del3(id);

if(b==1){
	response.sendRedirect("umissing1.jsp?msg= deleted successfully");
}
else{
	response.sendRedirect("umissing1.jsp?msg= not deleted");
}
}
if(request.getParameter("table").equals("del4"))
{
String id = request.getParameter("t1");
/* session.setAttribute("name1",name);
String password = request.getParameter("t2"); */
int b = insert.del4(id);

if(b==1){
	response.sendRedirect("ufir.jsp?msg= deleted successfully");
}
else{
	response.sendRedirect("ufir.jsp?msg= not deleted");
}
}
if(request.getParameter("table").equals("clogin"))
{
String name = request.getParameter("t1");
String password = request.getParameter("t2");

int c = insert.clogin(name, password);

if(c>0){
	response.sendRedirect("ahome.jsp?msg=login successfully");
}
else{
	response.sendRedirect("admin.jsp?msg=invalid credentials");
}
}
if(request.getParameter("table").equals("registration2"))
{
String name = request.getParameter("t1");
String suspect = request.getParameter("t2");
String des = request.getParameter("t3");
String dob = request.getParameter("t4");
String crime = request.getParameter("t5");
String uid=(String)session.getAttribute("uid");
//System.out.println(crime);
int a = insert.ucomplaint(name, suspect ,des ,dob,crime,uid);

if(a>0){
	response.sendRedirect("ucomplaint.jsp?msg=complaint registered successfully");
}
else{
	response.sendRedirect("ucomplaint.jsp?msg=complaint not registered");
} 
}
if(request.getParameter("table").equals("registration3"))
{
String suspect = request.getParameter("t1");
String inforname = request.getParameter("t2");
String inforadd = request.getParameter("t3");
String des = request.getParameter("t4");
String dob = request.getParameter("t5");
String uid=(String)session.getAttribute("uid");
int a = insert.ucrime(suspect, inforname ,inforadd ,des,dob,uid);

if(a>0){
	response.sendRedirect("ucrime.jsp?msg=witness report completed successfully");
}
else{
	response.sendRedirect("ucrime.jsp?msg=witness report not completed");
} 
}
if(request.getParameter("table").equals("registration4"))
{
String name = request.getParameter("t1");
String password = request.getParameter("t2");
String mail = request.getParameter("t3");
String phone = request.getParameter("t4");
String gender = request.getParameter("t5");
String add = request.getParameter("t6");
String colony = request.getParameter("t7");
String uid=(String)session.getAttribute("uid");
int a = insert.udupdate(name, password ,mail ,phone,gender,add,colony,uid);

if(a>0){
	response.sendRedirect("uhome.jsp?msg=details updated successfully");
}
else{
	response.sendRedirect("uhome.jsp?msg=details not updated");
}
}
if(request.getParameter("table").equals("registration5"))
{
String name = request.getParameter("t1");
String suspect = request.getParameter("t2");
String des = request.getParameter("t3");
String doc = request.getParameter("t4");
String crime = request.getParameter("t5");
String id1 = request.getParameter("t6");
String uid=(String)session.getAttribute("uid");
int a = insert.udeditc(name, suspect ,des ,doc,crime,id1,uid);

if(a>0){
	response.sendRedirect("uhome.jsp?msg=details updated successfully");
}
else{
	response.sendRedirect("uhome.jsp?msg=details not updated");
}
}

if(request.getParameter("table").equals("registration6"))
{
String a = request.getParameter("t1");
String b = request.getParameter("t2");
String c = request.getParameter("t3");
String d = request.getParameter("t4");
String e = request.getParameter("t5");
String f = request.getParameter("t6");
String g = request.getParameter("t7");
String h = request.getParameter("t8");
String i = request.getParameter("t9");
String j = request.getParameter("t10");
String k = request.getParameter("t11");
String l = request.getParameter("t12");
System.out.println(k);
System.out.println(l);
int a2 = insert.fir(a, b ,c ,d,e,f,g,h,i,j,k,l);

if(a2==1){
	response.sendRedirect("ahome.jsp?msg=FIR completed successfully");
}
else{
	response.sendRedirect("ahome.jsp?msg=FIR not completed ");
}
}


if(request.getParameter("table").equals("update"))
{

	int a=0;
	String n=(String)session.getAttribute("id1");
	String n1=(String)session.getAttribute("id2");
	String n2=request.getParameter("t3");
	
	
			
	 a=insert.update(n, n1 ,n2);
	if(a==1){
		response.sendRedirect("acomp.jsp?msg=reply sent to user");
	}
	else{
		response.sendRedirect("acomp.jsp?msg=reply not sent");
	}
	
}
if(request.getParameter("table").equals("cupdate"))
{

	int a=0;
	String n=(String)session.getAttribute("id3");
	String n1=(String)session.getAttribute("id4");
	String n2=request.getParameter("t3");
	
	
			
	 a=insert.cupdate(n, n1 ,n2);
	if(a==1){
		response.sendRedirect("awitness.jsp?msg=reply sent to user");
	}
	else{
		response.sendRedirect("awitness.jsp?msg=reply not sent");
	}
	
}
if(request.getParameter("table").equals("update1"))
{

	int a=0;
	String n=request.getParameter("fn");
	String s="Accepted";
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.update1(s,n);
	if(a==1){
		response.sendRedirect("cowners.jsp?msg=Accepted Successfully");
	}
	
}
if(request.getParameter("table").equals("hotnews"))
{

	int a=0;
	String n=request.getParameter("t1");
	
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.hotnews(n);
	if(a==1){
		response.sendRedirect("ahome.jsp?msg=Hotnews added Successfully");
	}
	
}
if(request.getParameter("table").equals("update2"))
{

	int a=0;
	String n=request.getParameter("fn");
	String s="rejected";
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.update2(s,n);
	if(a==1){
		response.sendRedirect("cowners.jsp?msg=rejected  Successfully");
	}
	
	
}
if(request.getParameter("table").equals("update4"))
{

	int a=0;
	String n=request.getParameter("owner");
	String n1=request.getParameter("id");
	String n4=request.getParameter("fn");
	String n5=request.getParameter("id1");
	
	String n3=(String)session.getAttribute("name1");
	String n2=(String)session.getAttribute("uid");
			
	 a=insert.update4(n1,n,n2,n3,n4,n5);
	if(a==1){
		response.sendRedirect("search.jsp?msg=request send to cloud");
	}
	else{
		response.sendRedirect("search.jsp?msg=request canot  send to cloud");
	}
	
}
if(request.getParameter("table").equals("update3"))
{

	int a=0;
	String n=request.getParameter("fn");
	String n1=request.getParameter("fn1");
	String n2=request.getParameter("fn2");
	//String s="rejected";
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.update3(n,n1,n2);
	if(a==1){
		response.sendRedirect("crequest.jsp?msg=key generated Successfully");
	}
	
	
}
if(request.getParameter("table").equals("update5"))
{

	int a=0;
	String n=request.getParameter("fn");
	String n1=request.getParameter("fn1");
	String s="Accepted";
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.update5(s,n,n1);
	if(a==1){
		response.sendRedirect("crequest.jsp?msg=Accepted Successfully");
	}
	
}
if(request.getParameter("table").equals("update6"))
{

	int a=0;
	String n=request.getParameter("fn");
	String n1=request.getParameter("fn1");
	String s="rejected";
	//String n1=(String)session.getAttribute("name");
			
	 a=insert.update6(s,n,n1);
	if(a==1){
		response.sendRedirect("crequest.jsp?msg=rejected Successfully");
	}
	
}

if(request.getParameter("table").equals("status"))
{

	int a=0;
	
	String n1=(String)session.getAttribute("name");
			
	 ResultSet rs=insert.status(n1);%><center>
	<div style="background:-webkit-radial-gradient(white,yellow)"> <table>
	 <tr>
	 <th>name</th>
	 <th>password</th>
	 <th>mobile</th>
	 <th>mail</th>
	 <th>filename</th>
	 <th>status</th>
	 <th>key</th>
	 <th>Download</th>
	 </tr>
	 <tr>
	<% while(rs.next()){%>
	<td> <%=rs.getString(1) %></td>
	<td>  <%=rs.getString(2) %></td>
	  <td> <%=rs.getString(3) %></td>
	  <td>  <%=rs.getString(4) %></td>
	   <td>  <%=rs.getString(5) %></td>
	    <td>  <%=rs.getString(6) %></td>
	     <td>  <%=rs.getInt(7) %></td>
		<td><a href="creg1.jsp?fn=<%=rs.getString(5)%>&table=download">Download</a></td>
	<% }%>
	</tr>
	</table>
	</div>
	</center>
	
<% } 

if(request.getParameter("table").equals("download"))
{

String fn = request.getParameter("fn");
String fn1 = request.getParameter("fn1");

String data = insert.download(fn,fn1);

if(data==""){
	
}else{
	
	try{
		String fileName = "filename";
		response.setHeader("Content-Disposition","attachment; fileName=\""+fileName+"\".txt");
	OutputStream os = response.getOutputStream();
	os.write(data.getBytes());
	os.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
}
}

%>


</body>
</html>