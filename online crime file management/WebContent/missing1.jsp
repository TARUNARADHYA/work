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

String img=request.getParameter("img");


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
			PreparedStatement ps=con.prepareStatement("insert into criminals(name,gender,age,w,h,boc,act,img) values(?,?,?,?,?,?,?,?)");
			
			ps.setString(1, a);
			ps.setString(2, b);
		
			ps.setString(3, c);
			ps.setString(4,d);
			ps.setString(5,e);
			ps.setString(6,f);
			ps.setString(7,g);
			
			ps.setBinaryStream(8, (InputStream) fis1, (int) (f1.length()));
			ps.executeUpdate();
			response.sendRedirect("ahome.jsp?msg=most wanted criminal details  Addeded successfully");
	
}
catch(Exception e1)
{
e1.printStackTrace();

}
%>
