package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Connection;

public final class EditRec_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("                <style>\n");
      out.write("            #customers {\n");
      out.write("                font-family: Arial, Helvetica, sans-serif;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #customers td, #customers th {\n");
      out.write("                border: 1px solid #ddd;\n");
      out.write("                padding: 8px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #customers th {\n");
      out.write("                padding-top: 12px;\n");
      out.write("                padding-bottom: 12px;\n");
      out.write("                text-align: left;\n");
      out.write("                background-color: #3498db;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            input[type=submit] {\n");
      out.write("                background-color: #3498db;\n");
      out.write("                color: white;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                margin: 1%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=submit]:hover {\n");
      out.write("                background-color: #005A9C;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <form action=\"UpdateRec.jsp\" method=\"post\">\n");
      out.write("        ");

            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Health_care?autoReconnect=true&useSSL=false", "root", "openthedooraeral");
            String _email = (String)session.getAttribute("_email");
            
            
            if(!con.isClosed())
            {
            PreparedStatement ps = con.prepareStatement("select * from user where email = ? ");
            ps.setString(1, _email);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <TABLE id=\"customers\">\n");
      out.write("            <tr>\n");
      out.write("                <th>userName</th>\n");
      out.write("                <th>gender</th>\n");
      out.write("                <th>Age</th>\n");
      out.write("                <th>mobile</th>\n");
      out.write("                <th>telephone</th>\n");
      out.write("                <th>email</th>\n");
      out.write("                <th>password</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><input type=\"text\" name=\"userName\" value=\"");
      out.print(rs.getString(1));
      out.write("\"></td>\n");
      out.write("                <td><input type=\"hidden\" name=\"gender\" value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                <td><input type=\"hidden\" name=\"Age\" value=\"");
      out.print(rs.getString(3));
      out.write('"');
      out.write('>');
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                <td><input type=\"text\" name=\"mobile\" value=\"");
      out.print(rs.getString(4));
      out.write("\"></td>\n");
      out.write("                <td><input type=\"text\" name=\"telephone\" value=\"");
      out.print(rs.getString(5));
      out.write("\"></td>\n");
      out.write("                <td><input type=\"hidden\" name=\"email\" value=\"");
      out.print(rs.getString(6));
      out.write('"');
      out.write('>');
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("                <td><input type=\"text\" name=\"password\" value=\"");
      out.print(rs.getString(7));
      out.write("\"></td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("        </TABLE>\n");
      out.write("        <input type=\"submit\" value=\"Update\" name=\"Update\"> \n");
      out.write("    </form>\n");
      out.write("    ");

        }
}
    
      out.write("\n");
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
