<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
	Blob image = null;
	System.out.println("in v");
	byte[] imgData = null;
	Statement stmt = null;
	ResultSet rs = null;
	String imn = request.getParameter("aid");
	System.out.println("imn: "+imn);
	System.out.println("*****************");
	Connection con = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/criminal", "root", "root");
		stmt = con.createStatement();
		rs = stmt.executeQuery("select img from criminals where id1='" + imn+ "'");
		if (rs.next()) 
		{
			System.out.println("in if");
			image = rs.getBlob(1);
			imgData = image.getBytes(1, (int) image.length());
		} 
		else 
		{
			out.println("Display Blob Example");
			out.println("image not found for given image>");
			return;
		}
		// display the image
		response.setContentType("image/jpg");
		OutputStream o = response.getOutputStream();
		o.write(imgData);
		o.flush();
		o.close();
	} 
	catch (Exception e) 
	{
		out.println("Unable To Display image");
		out.println("Image Display Error=" + e.getMessage());
		return;
	} 
	/* finally 
	{
		try 
		{
			rs.close();
			stmt.close();
			con.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}

	} */
%>
