<%-- 
    Document   : xemnhanvien
    Created on : Dec 7, 2017, 3:50:06 PM
    Author     : Administrator
--%>

<%@page import="model.NhatKy"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Vector<NhatKy> list = null;
            if (session.getAttribute("user") != null) {
                list = NhatKy.getTatCaNhatky();
            }
        %>
        <%@ include file="header.jsp" %>
        <%@ include file="menumain.jsp" %>
        <div id="xemnhanvien">
            <h2 >Xem nhật ký</h2>                
            <table >
                <tr>
                    <th width="30px">Mã Nhật ký</th>                                               
                    <th >Mã nhân viên</th>
                    <th >Mã sự kiện</th>                            
                    <th >Nội dung</th>                                                        
                    <th >Ngày hiệu lực</th>                                                                                                                                                                                               
                </tr> 
                <%if (list != null) {%>
                <%
                    for (NhatKy c : list) {

                %>
                <tr >
                    <td  width="30px"><%= c.getLogid()%></td>
                    <td  width="30px"><%= c.getManv()%></td>
                    <td ><%= c.getMask()%></td>                        
                    <td ><%= c.getNoidung()%></td>  
                    <td ><%= c.getNgayhieuluc()%></td>                           
                </tr>  
                <%}%>
                <%}%>
            </table>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
