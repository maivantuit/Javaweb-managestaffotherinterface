<%-- 
    Document   : login
    Created on : Dec 7, 2017, 3:18:13 PM
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

            <div id="dangnhap">
                <h2 >Login</h2>
                <form action="" method="POST">                    
                    <div >
                        <span>ID: </span>
                        <input type="text" name="manv">
                    </div > 	                        
                    <div > 
                        <span >Password </span>
                        <input type="password" name="matkhau">
                    </div>			
                    
                    <input id="inputlogin"  type="submit" value="Đăng nhập"> 
                </form>               
                <%
                
                    if(request.getMethod().equals("POST")){
                        String manv = request.getParameter("manv");
                        String matkhau = request.getParameter("matkhau");
                        Staff s = new Staff();
                        s= s.DangNhap(Integer.parseInt(manv), matkhau);
                        if(s !=null){
                            System.out.println("đăng nhập thành công");
                            session.setAttribute("user", s);
                            response.sendRedirect("dangnhapthanhcong.jsp");
                            
                        }else{
                             System.out.println("đăng nhập thành công");
                             response.sendRedirect("login.jsp");
                        }
                    }

                %>
            </div>


            <%@ include file="footer.jsp" %>
     
    </body>
</html>
