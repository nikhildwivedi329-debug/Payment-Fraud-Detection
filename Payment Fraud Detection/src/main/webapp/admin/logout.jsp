<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate(); // destroy current admin session
    response.sendRedirect("login.jsp");
%>
