<%@page import="com.kb.dao.UserDao"%>  
<jsp:useBean id="u" class="com.kb.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  