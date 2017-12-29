package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Staff;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/menumain.jsp");
    _jspx_dependants.add("/content.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <a href=\"index.jsp\"><img src=\"images/cdcn.png\"></a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!DOCTYPE html><!--Comment here-->\n");
      out.write("    <html lang=\"vi\">\n");
      out.write("        <head>\n");
      out.write("            <title>trang tri list-style</title><!--tiêu đề-->\n");
      out.write("            <meta charset=\"utf-8\"/><!--website sử dụng tiếng việt-->\t\t        \n");
      out.write("        </head>\n");
      out.write("        <body>\t\n");
      out.write("        ");

            Staff s1=null;
            if(session.getAttribute("user")!=null){                
                 s1 = (Staff)session.getAttribute("user");
            }
        
      out.write("\n");
      out.write("            <div id=\"menumain\">\n");
      out.write("                <div id=\"menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\">Chào bạn:\n");
      out.write("                                \n");
      out.write("                                ");
if(s1!=null){
      out.write("\n");
      out.write("                                ");
      out.print( s1.getTen() +" "+s1.getHo());
      out.write("\n");
      out.write("                                ");
}
      out.write(" \n");
      out.write("                            \n");
      out.write("                            </a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Trang chủ</a></li>\t\t\t\t\n");
      out.write("                        <li><a href=\"login.jsp\">Đăng nhập</a></li>\n");
      out.write("                        <li><a href=\"dangxuat.jsp\">Đăng xuất</a></li>\n");
      out.write("                        <li><a href=\"doimatkhau.jsp\">Đổi mật khẩu</a></li>\n");
      out.write("                        <li><a href=\"themnhanvien.jsp\">Thêm nhân viên</a></li>\n");
      out.write("                        <li><a href=\"xemnhanvien.jsp\">Xem tất cả nhân viên</a></li>\n");
      out.write("                        <li><a href=\"xemnhatky.jsp\">Xem nhật ký nhân viên</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </div>\t\t\t\n");
      out.write("            </div>\t\t\t\t\t\t\t\t\n");
      out.write("        </body>\n");
      out.write("    </html\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \t\t<div id=\"content\">Website Quản Lý Nhân Sự</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"foodter\">Sinh viên: Hà Thị Lý</div>\t\t\t\t\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
