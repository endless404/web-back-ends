/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M26
 * Generated at: 2019-02-11 13:50:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n");
      out.write("\t<title>Login</title>\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t\thtml,body{\n");
      out.write("\t\t\theight: 100%;\n");
      out.write("\t\t\tdisplay: flex;\n");
      out.write("\t\t\tjustify-content:center;\n");
      out.write("\t\t\talign-items:center;\n");
      out.write("\t\t\toverflow: hidden;\n");
      out.write("\t\t\tbackground-size: cover;\n");
      out.write("\t\t}\n");
      out.write("\t\t#wrap{\n");
      out.write("\t\t\twidth: 400px;\n");
      out.write("\t\t\theight:400px;\n");
      out.write("\t\t\tbackground-color:#eee;\n");
      out.write("\t\t\tborder-radius: 4px;\n");
      out.write("\t\t\tposition: absolute;\n");
      out.write("\t\t}\n");
      out.write("\t\t#wrap::after{\n");
      out.write("\t\t\tcontent: '';\n");
      out.write("\t\t\tposition: absolute;\n");
      out.write("\t\t\ttop: 0;\n");
      out.write("\t\t\tleft: 0;\n");
      out.write("\t\t\theight: 10px;\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\tbackground: -webkit-linear-gradient(left,#d75e0d 20%,#376e44 20%,#376e44 40%,#83a721 40%,#83a721 60%,#c64f49 60%,#c64f49 80%,#327db7 80%, #327db7);\n");
      out.write("\t\t\tborder-radius: 4px 4px 0 0;\n");
      out.write("\t\t}\n");
      out.write("\t\th2{\n");
      out.write("\t\t\ttext-align: center;\n");
      out.write("\t\t\tmargin-top: 3rem;\n");
      out.write("\t\t}\n");
      out.write("\t\t.box{\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.box span{\n");
      out.write("\t\t\tfloat: right;\n");
      out.write("\t\t\twidth: 50%;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput{\n");
      out.write("\t\t\tborder-radius: 2px;\n");
      out.write("\t\t\tborder: 1px solid #aaa;\n");
      out.write("\t\t\tfont-size: 20px;\n");
      out.write("\t\t\tmargin:30px auto;\n");
      out.write("\t\t\theight: 40px;\n");
      out.write("\t\t\tpadding: 2px 7px;\n");
      out.write("\t\t\tdisplay: table;\n");
      out.write("\t\t\twidth: 70%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.forget{\n");
      out.write("\t\t\tmargin: 0 auto;\n");
      out.write("\t\t\tdisplay: table;\n");
      out.write("\t\t}\n");
      out.write("\t\ta{\n");
      out.write("\t\t\tcolor: #000;\n");
      out.write("\t\t\ttext-decoration: none;\n");
      out.write("\t\t}\n");
      out.write("\t\ta:hover{\n");
      out.write("\t\t\ttext-decoration: underline;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"wrap\">\n");
      out.write("\t\t<form action=\"login\" method=\"post\">\n");
      out.write("\t\t\t<h2>图书管理系统用户登录</h2>\n");
      out.write("\t\t\t<div class=\"box\">\n");
      out.write("\t\t\t\t<input type=\"text\" placeholder=\"账号\" id=\"name\" name=\"name\" value=\"root\">\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"密码\" id=\"password\" name=\"password\" value=\"123456\">\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"登录\" id=\"enter\">\n");
      out.write("\t\t\t\t<div class=\"forget\">\n");
      out.write("\t\t\t\t\t<a href=\"forget\">忘记密码？</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
