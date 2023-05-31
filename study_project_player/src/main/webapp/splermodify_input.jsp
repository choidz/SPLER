<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%
int num = Integer.parseInt(request.getParameter("num"));
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

String strSQL = "UPDATE splertable set name=?, division=?, persons=?, period=?, onoff=?, language=?, startdate=?, communication=?, title=?, contents=? WHERE num=?";

pstmt = conn.prepareStatement(strSQL);
pstmt.setString(1, name);
pstmt.setString(2, division);
pstmt.setString(3, persons);
pstmt.setString(4, period);
pstmt.setString(5, onoff);
pstmt.setString(6, language);
pstmt.setString(7, startdate);
pstmt.setString(8, communication);
pstmt.setString(9, title);
pstmt.setString(10, contents);
pstmt.setInt(11, 0);
pstmt.executeUpdate();

pstmt.close();
conn.close();
response.sendRedirect("Spler.jsp");
%>

