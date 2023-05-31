<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title> 아이디 중복 체크 </title>
      
     
   </head>
   <body>
  

   <table board='1' width='250'>
   <%
   String id = request.getParameter("id");
   
   if (id == "") {
   %>
      <tr>
         <td align="center" bgcolor="cccccc">
            <font size='2'> id를 입력하세요. </font>
         </td>
      </tr>
      
      
      
      <%
   } else {
      Class.forName("com.mysql.jdbc.Driver");
      
      String url = "jdbc:mysql://localhost:3306/dbmember";
      Connection conn = DriverManager.getConnection(url,"member","1234");
      Statement stmt = conn.createStatement();
      
      String strSQL= "select id from splermember WHERE id='" + id + "'";
      ResultSet rs= stmt.executeQuery(strSQL);
      
      if (!rs.next()) {
      %>
      
      <tr>
         <td align="center" bgcolor="ccccccc">
            <font size='2'>ID : <%= id%> <BR>사용할 수 있는 아이디입니다.</Font>
         </td>
      </tr>
      
      
      
      <%
      } else {
      %>
      
      
      <tr>
         <td align="center" bgcolor="ccccccc">
            <font size="2">ID : <%=id%> <BR>사용할 수 없는 아이디입니다.</font>
         </td>
      </tr>
      
      
   </table>
   <% 
      }
         rs.close();
         stmt.close();
         conn.close();
      }
   %>
   </body>
</html>