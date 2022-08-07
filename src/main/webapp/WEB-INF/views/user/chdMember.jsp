<%@ page import="kopo.poly.dto.ChdDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

   <%
       List<ChdDTO>rList =(List<ChdDTO>)request.getAttribute("rList");
       %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" >
  <title>유아 회원목록 정보</title>
    </head>

<body>
<div style="margin:auto;width:800px;">
                <table border="1">
                 <tr>
                   <td>이름</td>
                   <td>나이</td>
                   <td>성별</td>
                   <td>코드</td>
                 </tr>
                    <tr>
                  <% for(int i=0; i<rList.size();i++){ %>
                  <td><%=rList.get(i).getChild_name()%></td>
                  <td><%=rList.get(i).getChild_age()%></td>
                  <td><%=rList.get(i).getChild_gender()%></td>
                  <td><%=rList.get(i).getChild_code()%></td>
                    </tr>
                  <% } %>

                </table>

            </div>
</body>
</html>