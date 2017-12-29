<%-- 
    Document   : doimatkhau
    Created on : Dec 7, 2017, 3:37:51 PM
    Author     : Administrator
--%>

<%@page import="model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Staff s=null;
            if(session.getAttribute("user")!=null){                
                 s = (Staff)session.getAttribute("user");
            }
        %>
         <%@ include file="header.jsp" %>
            <%@ include file="menumain.jsp" %>
            <div id="dangnhapthanhcong">
                <h4>                                                            
                    Chúc mừng bạn: <%= s.getTen() +" "+s.getHo()%>, đã đăng nhập thành công
                </h4>
        </div>

            <%@ include file="footer.jsp" %>
    </body>
</html>
