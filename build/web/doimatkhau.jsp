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
        <%@ include file="header.jsp" %>
        <%@ include file="menumain.jsp" %>
        <div id="doimatkhau">
            <h2>Đổi mật khẩu</h2>
            <form action="" method="POST">                    	                        
                <div> 
                    <span >Nhập mật khẩu cũ </span>
                    <input type="password" name="matkhaucu">
                </div>	
                <div > 
                    <span >Nhập mật khẩu mới</span>
                    <input type="password" name="matkhaumoi">
                </div>
                <div> 
                    <span >Nhập lại mật khẩu mới </span>
                    <input type="password" name="nhaplaimatkhaumoi">
                </div>                
                <div>                       
                    <input  type="submit" value="Đổi mật khẩu" onclick="return checkForm();">                     
                </div>
            </form>
            <%
                Staff s = null;
                if (session.getAttribute("user") != null) {
                    s = (Staff) session.getAttribute("user");
                }
                if (request.getMethod().equals("POST")) {
                    String matkhaucu = request.getParameter("matkhaucu");
                    String matkhaumoi = request.getParameter("matkhaumoi");
                    String nhaplaimatkhaumoi = request.getParameter("nhaplaimatkhaumoi");
                    if (s != null) {
                        s.DoiMatKhau(Integer.parseInt(s.getManv()), nhaplaimatkhaumoi);
                        System.out.println("đổi mật khẩu thành công");
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/doimatkhauthanhcong.jsp");
                        rd.forward(request, response);
                    }
                }


            %>
        </div>

        <%@ include file="footer.jsp" %>
    </body>
</html>
