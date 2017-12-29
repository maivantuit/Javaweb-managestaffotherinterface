<%-- 
    Document   : themnhanvien
    Created on : Dec 7, 2017, 3:43:56 PM
    Author     : Administrator
--%>

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
        <div id="themnhanvien">
            <h2>Thêm nhân viên, điền đầy đủ thông tib</h2>
            <form action="" method="POST" accept-charset="UTF-8">                    	                        
                <div id="themnhanvien">                    
                    <div> 
                        <span >Họ NV: </span>
                        <input  type="text" name="ho">
                    </div>	                    
                    <div > 
                        <span >Tên NV: </span>
                        <input  type="text" name="ten">
                    </div>
                    <div > 
                        <span>Ngày sinh: </span>
                        <input  type="date" name="ngaysinh">
                    </div>
                    <div > 
                        <span >Sex(Nu or Nam): </span>
                        <input type="text" name="gioitinh">
                    </div>
                    <div id="cmnd"> 
                        <span >CMND: </span>
                        <input type="text" name="cmnd">
                    </div>
                    <div class="formne3"> 
                        <span class="word">Password: </span>
                        <input class="sizeinput" type="password" name="pass">
                    </div> 
                    <div > 
                        <span >Nhập lại pass </span>
                        <input type="password" name="nhaplaipass">
                    </div> 
                    <div > 
                        <span >Status: </span>
                        <input type="text" name="status">
                    </div>        
                    <input type="submit" value="Thêm nhân viên" onclick="return checkForm();"> 
                </div>            
            </form>
            <%
                //ThemNhanVien(String ho, String ten, String dob, String sex, String CMND, String pw, String status)
                if (request.getMethod().equals("POST")) {
                    String ho = request.getParameter("ho");
                    String ten = request.getParameter("ten");
                    String ngaysinh = request.getParameter("ngaysinh");
                    String gioitinh = request.getParameter("gioitinh");
                    String cmnd = request.getParameter("cmnd");
                    String pass = request.getParameter("pass");
                    String nhaplaipass = request.getParameter("nhaplaipass");
                    String status = request.getParameter("status");
                    Staff s2 = new Staff();
                    s2.ThemNhanVien(ho, ten, ngaysinh, gioitinh, cmnd, nhaplaipass, status);
                    if (s2 != null) {                        
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/themnhanvienthanhcong.jsp");
                        rd.forward(request, response);
                    }
                }
            %>
        </div>

        <%@ include file="footer.jsp" %>

    </body>
</html>
