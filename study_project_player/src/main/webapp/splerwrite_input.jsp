<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%


String name = request.getParameter("name");
String division = request.getParameter("division");
String persons = request.getParameter("persons");
String period = request.getParameter("period");
String onoff = request.getParameter("onoff");
String language = request.getParameter("language");
String startdate = request.getParameter("startdate");
String communication = request.getParameter("communication");
String title = request.getParameter("title");
String contents = request.getParameter("contents");

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/dbmember";
Connection conn = DriverManager.getConnection(url, "member", "1234");
PreparedStatement pstmt = null;


String strSQL = "INSERT INTO splertable(division, persons, period, onoff, language, startdate, communication, name, title, contents, readcount)";
strSQL = strSQL+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";

pstmt = conn.prepareStatement(strSQL);
pstmt.setString(1, division);
pstmt.setString(2, persons);
pstmt.setString(3, period);
pstmt.setString(4, onoff);
pstmt.setString(5, language);
pstmt.setString(6, startdate);
pstmt.setString(7, communication);
pstmt.setString(8, name);
pstmt.setString(9, title);
pstmt.setString(10, contents);
pstmt.setInt(11, 0);
pstmt.executeUpdate();


pstmt.close();
conn.close();
response.sendRedirect("Spler.jsp");
%>

