package conn;
import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import com.sun.mail.util.BASE64DecoderStream;



public class insert {
	

public static int oreg(String name, String password,String mobile,String mail,String dob,String add){
	int a = 0;
	
	String sql ="select * from oreg where name=? and password=?";
	
	String sql1 ="insert into oreg(name, password,mobile,mail,dob,address,status)values(?,?,?,?,?,?,?)";
	String s="waiting";
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
		a=0;
		}
		else{
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, name);
			ps1.setString(2, password);
			ps1.setString(3, mobile);
			ps1.setString(4, mail);
			ps1.setString(5, dob);
			ps1.setString(6, add);
			ps1.setString(7, s);
		 a=ps1.executeUpdate();
		}
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}

public static String ologin(String name, String password){
	
	String b =null;
	
	String s="accepted";
	String sql ="select * from visitors where name=? and password=? ";
	
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, password);
		
		ResultSet rs1 = ps.executeQuery();
		if(rs1.next()){
			
			 b=rs1.getString(1);
			
			
			}
		else{
			b=null;
		}
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	
	return b;
	
	
}
public static int ureg(String name, String password,String mail,String phone,String gender,String add,String colony){
	int a = 0;
	
	String sql ="select * from ureg where name=? and password=?";
	
	String sql1 ="insert into ureg(name, password,mail,phone,gender,address,colony)values(?,?,?,?,?,?,?)";
	
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
		a=0;
		}
		else{
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, name);
			ps1.setString(2, password);
			ps1.setString(3, mail);
			ps1.setString(4, phone);
			ps1.setString(5, gender);
			ps1.setString(6, add);
			ps1.setString(7, colony);
		 a=ps1.executeUpdate();
		}
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static int vreg(String name, String password,String mail,String phone,String gender,String add,String colony){
	int a = 0;
	
	String sql ="select * from visitors where name=? and password=?";
	
	String sql1 ="insert into visitors(name, password,mail,phone,gender,address,colony)values(?,?,?,?,?,?,?)";
	
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
		a=0;
		}
		else{
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, name);
			ps1.setString(2, password);
			ps1.setString(3, mail);
			ps1.setString(4, phone);
			ps1.setString(5, gender);
			ps1.setString(6, add);
			ps1.setString(7, colony);
		 a=ps1.executeUpdate();
		}
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static int fir(String a1, String b,String c,String d,String e,String f,String g,String h,String i,String j,String k,String l){
	int a = 0;
	String s="FIR COMPLERED";
	
	String sql ="update umissing set status=? where id=? and id1=?";
	
	String sql1 ="insert into fir(id,name,mplace,dom,age,w,h,aom,dor,fir,act)values(?,?,?,?,?,?,?,?,?,?,?)";
	
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, s);
		ps.setString(2, k);
		ps.setString(3, l);
		ps.executeUpdate();
		
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, k);
			ps1.setString(2, a1);
			ps1.setString(3, b);
			ps1.setString(4, c);
			ps1.setString(5, d);
			ps1.setString(6, e);
			ps1.setString(7, f);
			ps1.setString(8, g);
			ps1.setString(9, h);
			ps1.setString(10, i);
			ps1.setString(11, j);
			
		 a=ps1.executeUpdate();
		
				
	
	}
	catch(Exception e1){
		e1.printStackTrace();		
	}
	return a;
}



public static int udupdate(String name, String password,String mail,String phone,String gender,String add,String colony,String uid){
	int a = 0;
	
	
	String sql1 ="update ureg set name=?,password=?,mail=?,phone=?,gender=?,address=?,colony=?  where id=? ";
	
	try{
		
		
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, name);
			ps1.setString(2, password);
			ps1.setString(3, mail);
			ps1.setString(4, phone);
			ps1.setString(5, gender);
			ps1.setString(6, add);
			ps1.setString(7, colony);
			ps1.setString(8, uid);
		 a=ps1.executeUpdate();
		
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static int udeditc(String name, String suspect,String des,String doc,String crime,String id1,String uid){
	int a = 0;
	
	
	String sql1 ="update ucomplaint set id=?,name=?,suspect=?,Description=?,dob=?,crime=?  where id=? and id1=? ";
	
	try{
		
		
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, uid);
			ps1.setString(2, name);
			ps1.setString(3, suspect);
			ps1.setString(4, des);
			ps1.setString(5, doc);
			ps1.setString(6, crime);
			ps1.setString(7, uid);
			ps1.setString(8, id1);
		 a=ps1.executeUpdate();
		
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}



public static int ucomplaint(String name, String suspect,String des,String dob,String crime,String uid){
	int a = 0;
	
	
	
	String sql1 ="insert into ucomplaint(id,name, suspect,description,dob,crime)values(?,?,?,?,?,?)";
	
	try{
		
		
		
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, uid);
			ps1.setString(2, name);
			ps1.setString(3, suspect);
			ps1.setString(4, des);
			ps1.setString(5, dob);
			ps1.setString(6, crime);
			
		 a=ps1.executeUpdate();
		
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static int ucrime(String suspect, String inforname,String inforadd,String des,String dob,String uid){
	int a = 0;
	
	
	
	String sql1 ="insert into ucrime(id,suspect,inforname,inforadd,des,dob)values(?,?,?,?,?,?)";
	
	try{
		
		
		
			Connection con1 = Dbconn.config();
			PreparedStatement ps1 = con1.prepareStatement(sql1);
			ps1.setString(1, uid);
			ps1.setString(2, suspect);
			ps1.setString(3, inforname);
			ps1.setString(4, inforadd);
			ps1.setString(5, des);
			ps1.setString(6, dob);
			
		 a=ps1.executeUpdate();
		
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static String ulogin(String name, String password){
	
	String b="";
	
	
	String sql ="select * from ureg where name=? and password=?";
	
	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, password);
		ResultSet rs1 = ps.executeQuery();
		if(rs1.next()){
			b=rs1.getString(1);
			
			}
		else{
			b=null;
		}
				
	}catch(Exception e){
		e.printStackTrace();		
	}
	
	return b;
	
	
}

public static int clogin(String name, String password){
	int c = 0;
	if((name.equals("admin"))&&(password.equals("admin"))){
		c=1;
	}
	else
	{
		c=0;
	}
	return c;
}

public static int update(String n, String n1,String n2){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update ucomplaint set reply=? where id=? and id1=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n2);
	ps.setString(2,n);
	ps.setString(3,n1);
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int cupdate(String n, String n1,String n2){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update ucrime set reply=? where id=? and id1=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n2);
	ps.setString(2,n);
	ps.setString(3,n1);
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int hist1(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update ucomplaint set status=? where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int hist2(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update ucrime set status=? where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int hist3(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update umissing set status1=? where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int fir1(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update fir set status=? where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int ahot1(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from hotnews where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int awan(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from criminals where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int del4(String n){

	int a = 0;
	String s="over";
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from fir where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int del1(String n){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from ucomplaint where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int del2(String n){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from ucrime where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int del3(String n){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="delete from umissing where id1=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n);
	
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int hotnews(String news){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="insert into hotnews(news)values(?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,news);
	
	 a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int update1(String s, String n){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update oreg set status=? where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int update2(String s, String n){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update oreg set status=? where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int update4(String id, String owner,String uid,String user,String fn,String id1){
	int a = 0;
	String s="pending";
	
	
	String sql1 ="insert into urequest(wid, wname,uid,uname,fn,status,id1)values(?,?,?,?,?,?,?)";
	
	try{
	
		
		Connection con = Dbconn.config();
		PreparedStatement ps = con.prepareStatement(sql1);
			ps.setString(1, id);
			ps.setString(2, owner);
			ps.setString(3, uid);
			ps.setString(4, user);
			ps.setString(5, fn);
			ps.setString(6, s);
			ps.setString(7, id1);
		 a=ps.executeUpdate();
		}
				
	catch(Exception e){
		e.printStackTrace();		
	}
	return a;
}
public static int update3( String n,String n1,String n2){

	int a = 0;
	String pkey="";
	
	try{
		
		
		Connection con=Dbconn.config();
		String sql="select * from ownerfiles where id=? and id1=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,n2);
		ps.setString(2,n1);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			pkey=rs.getString("pkey");
		}
		Connection con1=Dbconn.config();
	String sql1="update urequest set keyy=? where uid=?";
	PreparedStatement ps1=con1.prepareStatement(sql1);
	ps1.setString(1,pkey);
	ps1.setString(2,n);
	a=ps1.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int update5(String s, String n,String n1){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update urequest set status=? where uid=? and id1=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	ps.setString(3,n1);
	a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static int update6(String s, String n,String n1){

	int a = 0;
	
	try{
		
	
	Connection con=Dbconn.config();
	String sql="update urequest set status=? where uid=? and id1=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,s);
	ps.setString(2,n);
	ps.setString(2,n);
	a=ps.executeUpdate();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	
}
public static ResultSet status( String n2){

	
	ResultSet r1=null;
	
	try{
		
		Connection con=Dbconn.config();
	String sql="select * from creg where name=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,n2);
	r1=ps.executeQuery();
	 
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return r1;
	
}
public static String download(String fn,String fn1){
	
	String sql = "select upload from ownerfiles where fname=? and id=?";
	String data = null;

	try{
		
		Connection con = Dbconn.config();
		PreparedStatement ps= con.prepareStatement(sql);
		ps.setString(1, fn);
		ps.setString(2, fn1);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			data = rs.getString(1);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return data;
}
	
public static String encrypt(String strClearText,String strKey) throws Exception{
	String strData="";
	
	try {
		SecretKeySpec skeyspec=new SecretKeySpec(strKey.getBytes(),"Blowfish");
		Cipher cipher=Cipher.getInstance("Blowfish");
		cipher.init(Cipher.ENCRYPT_MODE, skeyspec);
		byte[] encrypted=cipher.doFinal(strClearText.getBytes());
		strData=new String(encrypted);
		
	} catch (Exception e) {
		e.printStackTrace();
		throw new Exception(e);
	}
	return strData;
}
/*public static String decrypt(String strEncrypted,String strKey) throws Exception{
	String strData="";
	
	try {
		SecretKeySpec skeyspec=new SecretKeySpec(strKey.getBytes(),"Blowfish");
		Cipher cipher=Cipher.getInstance("Blowfish");
		cipher.init(Cipher.DECRYPT_MODE, skeyspec);
		byte[] decrypted=cipher.doFinal(strEncrypted.getBytes());
		strData=new String(decrypted);
		
	} catch (Exception e) {
		e.printStackTrace();
		throw new Exception(e);
	}
	return strData;
}*/


	
	
}
