<%-- 
    Document   : menumain
    Created on : Dec 7, 2017, 2:54:19 PM
    Author     : Administrator
--%>

<%@page import="model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html><!--Comment here-->
    <html lang="vi">
        <head>
            <title>trang tri list-style</title><!--tiêu đề-->
            <meta charset="utf-8"/><!--website sử dụng tiếng việt-->		        
        </head>
        <body>	
        <%
            Staff s1=null;
            if(session.getAttribute("user")!=null){                
                 s1 = (Staff)session.getAttribute("user");
            }
        %>
            <div id="menumain">
                <div id="menu">
                    <ul>
                        <li><a href="index.jsp">Chào bạn:
                                
                                <%if(s1!=null){%>
                                <%= s1.getTen() +" "+s1.getHo()%>
                                <%}%> 
                            
                            </a></li>
                        <li><a href="index.jsp">Trang chủ</a></li>				
                        <li><a href="login.jsp">Đăng nhập</a></li>                        
                        <li><a href="doimatkhau.jsp">Đổi mật khẩu</a></li>
                        <li><a href="themnhanvien.jsp">Thêm nhân viên</a></li>
                        <li><a href="xemnhanvien.jsp">Xem tất cả nhân viên</a></li>
                        <li><a href="xemnhatky.jsp">Xem nhật ký nhân viên</a></li>
                        <li><a href="dangxuat.jsp">Đăng xuất</a></li>
                    </ul>

                </div>			
            </div>								
        </body>
    </html
</body>
</html>
