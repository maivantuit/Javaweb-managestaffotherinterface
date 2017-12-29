<%-- 
    Document   : xemnhanvien
    Created on : Dec 7, 2017, 3:50:06 PM
    Author     : Administrator
--%>

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
            Vector<Staff> liststaff = null;
            if (session.getAttribute("user") != null) {
                liststaff = Staff.getTatCaStaff();
            }

        %>
        <%@ include file="header.jsp" %>
        <%@ include file="menumain.jsp" %>
        <div id="xemnhanvien">
            <h2 >Xem danh sách nhân viên</h2>                
            <table >
                <tr>
                    <th width="30px">Mã NV</th>                                               
                    <th >Họ</th>
                    <th >Tên</th>                            
                    <th >Dob</th>                                                        
                    <th >Sex</th>                                                        
                    <th >CMND</th>                                                        
                    <th >Pass</th>                                                        
                    <th >Status</th>                                                        
                </tr> 
                <%if (liststaff != null) {%>
                <%
                    for (Staff c : liststaff) {

                %>
                <tr >
                    <td  width="30px"><%= c.getManv()%></td>
                    <td  width="30px"><%= c.getHo()%></td>
                    <td ><%= c.getTen()%></td>                        
                    <td ><%= c.getDob()%></td>  
                    <td ><%= c.getSex()%></td>
                    <td ><%= c.getCMND()%></td>                
                    <td ><%= c.getPw()%></td>
                    <td ><%= c.getStatus()%></td>              

                </tr>  
                <%}%>
                <%}%>
            </table>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
