<%@page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.zip.*"%>
<% 

String a=request.getParameter("t1");
String b=request.getParameter("t2");
String c=request.getParameter("t3");
String d=request.getParameter("t4");
String e=request.getParameter("t5");
String f=request.getParameter("t6");
String g=request.getParameter("t7");
String h=request.getParameter("t8");
String i1=request.getParameter("t9");
String j=request.getParameter("t10");
String k=request.getParameter("t11");
String img=request.getParameter("img");
String uid=(String)session.getAttribute("uid");

int cnt=0;
try
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/criminal","root","root");
 /*  PreparedStatement ps1=con.prepareStatement("select count(*) from product where product=? && pname=?");
	ps1.setString(1, pro);
	ps1.setString(2, name);
	ResultSet rs = ps1.executeQuery();
	while(rs.next())
	{
		cnt=rs.getInt(1);
	} */
   /* if(cnt==1)
	{
	response.sendRedirect("apro.jsp? msg=Image Name already exist");
		} */
	
	FileInputStream fis=null;
			System.out.println("scat: "+img);
			int i = img.lastIndexOf('\\');
			String buffer = img.substring(i+1);
			File f1 = new File("C:/Users/Suneetha.YMTS/Pictures/Screenshots/"+buffer);
			
			FileInputStream fis1=new FileInputStream("C:/Users/Suneetha.YMTS/Pictures/Screenshots/"+buffer);
				
			fis1 = new FileInputStream(f1);
			PreparedStatement ps=con.prepareStatement("insert into umissing(id,name,mplace,dom,mdist,gender,age,w,h,boc,addm,dor,img) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, uid);
			ps.setString(2, a);
			ps.setString(3, b);
		
			ps.setString(4, c);
			ps.setString(5,d);
			ps.setString(6,e);
			ps.setString(7,f);
			ps.setString(8,g);
			ps.setString(9,h);
			ps.setString(10,i1);
			ps.setString(11,j);
			ps.setString(12,k);
			ps.setBinaryStream(13, (InputStream) fis1, (int) (f1.length()));
			ps.executeUpdate();
			response.sendRedirect("umissing.jsp?msg=missing person details  Addeded successfully");
	
}
catch(Exception e1)
{
e1.printStackTrace();

}
%>
