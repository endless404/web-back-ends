/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M26
 * Generated at: 2019-02-17 13:47:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class more_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/WEB-INF/view/nav.jsp", Long.valueOf(1550149218704L));
    _jspx_dependants.put("jar:file:/E:/javaAllWorkSpace/freetime/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/free/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153356282000L));
    _jspx_dependants.put("jar:file:/E:/javaAllWorkSpace/freetime/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/free/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153356282000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1493978810868L));
    _jspx_dependants.put("/WEB-INF/view/quote.jsp", Long.valueOf(1547195292929L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>图书管理系统</title>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.12.4.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/index.css\">\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/index.js\"></script>");
      out.write(" \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-default\">\r\n");
      out.write("  \t\t<div class=\"container-fluid\">\r\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("      <ul class=\"nav navbar-nav nav_check\">\r\n");
      out.write("        <li><a href=\"books\">图书查询</a></li>\r\n");
      out.write("        <li><a href=\"user\">用户查询</a></li>\r\n");
      out.write("        <li><a href=\"addBorrow\">借书登记</a></li>\r\n");
      out.write("        <li><a href=\"add\">增加图书</a></li>\r\n");
      out.write("        <li><a href=\"addUser\">增加用户</a></li>\r\n");
      out.write("        <li  class=\"dropdown\">\r\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">基础信息修改<span class=\"caret\"></span></a>\r\n");
      out.write("          <ul class=\"dropdown-menu menu_two\">\r\n");
      out.write("            <li><a href=\"upbook\">书籍信息修改</a></li>\r\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\r\n");
      out.write("            <li><a href=\"upuser\">用户信息修改</a></li>\r\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\r\n");
      out.write("            <li><a href=\"upcost\">逾期费用修改</a></li>\r\n");
      out.write("            \r\n");
      out.write("          </ul>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("        <li><a href=\"#\">欢迎admin,^_^</a></li>\r\n");
      out.write("        <li class=\"dropdown\">\r\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">修改登录信息<span class=\"caret\"></span></a>\r\n");
      out.write("          <ul class=\"dropdown-menu exit\">\r\n");
      out.write("            <li><a href=\"uppwd\">修改登录密码</a></li>\r\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\r\n");
      out.write("            <li><a href=\"loginout\">退出登录</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div><!-- /.navbar-collapse -->\r\n");
      out.write("  \t</div><!-- /.container-fluid -->\r\n");
      out.write("</nav>");
      out.write("\r\n");
      out.write("\t<div class=\"container show\">\r\n");
      out.write("\t\t<div class=\"show_main\">\r\n");
      out.write("\t\t\t<h3 class=\"title\">逾期信息修改</h3>\r\n");
      out.write("\t\t\t<div class=\"sreach\">\r\n");
      out.write("\t\t\t<form action=\"findBorrowbook\" method=\"post\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" placeholder=\"输入图书id\" name = \"bookid\" >\r\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"搜索\" id=\"enter\">\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\t<table class=\"table table-condensed table-hover table-bordered\">\r\n");
      out.write("\t\t\t\t\t<!-- On rows -->\r\n");
      out.write("\t\t\t\t\t<!-- On cells (`td` or `th`) -->\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th class=\"success\">读者编号</th>\r\n");
      out.write("\t\t\t\t\t\t<th class=\"success\">图书编号</th>\r\n");
      out.write("\t\t\t\t\t\t<th class=\"success\">图书名字</th>\r\n");
      out.write("\t\t\t\t\t\t<th class=\"success\">逾期费用￥</th>\r\n");
      out.write("\t\t\t\t\t\t<th class=\"success\">操作</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/view/more.jsp(34,5) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/view/more.jsp(34,5) '${bookReaderBorrowList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${bookReaderBorrowList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/view/more.jsp(34,5) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("bookReaderBorrow");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("          \t\t\t<form action=\"changeBookReaderBorrow\" method=\"post\">\r\n");
            out.write("\t          \t\t\t<tr>\r\n");
            out.write("\t\t\t\t\t\t<td><input style=\"border:0px ;background-color:transparent\" type=\"text\" name=\"readerid\" readonly=\"readonly\"\r\n");
            out.write("\t\t\t\t\t\t\t\tvalue=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bookReaderBorrow.readerid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"></td>\r\n");
            out.write("\t\t\t\t\t\t\t<td><input style=\"border:0px ;background-color:transparent\" type=\"text\" name=\"bookid\" readonly=\"readonly\"\r\n");
            out.write("\t\t\t\t\t\t\t\tvalue=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bookReaderBorrow.bookid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"></td>\r\n");
            out.write("\t\t\t\t\t\t\t<td><input style=\"border:0px ;background-color:transparent\" type=\"text\" name=\"bookname\" readonly=\"readonly\"\r\n");
            out.write("\t\t\t\t\t\t\t\tvalue=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bookReaderBorrow.bookname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"></td>\r\n");
            out.write("\t\t\t\t\t\t\t<td>\r\n");
            out.write("\t\t\t\t\t\t\t<input type=\"text\" name=\"fine\" value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bookReaderBorrow.fine}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\">\r\n");
            out.write("\t\t\t\t\t\t\t</td>\r\n");
            out.write("\t\t\t\t\t\t\t<td><button type=\"submit\" class=\"btn btn-primary pull-right\">提交</button>\r\n");
            out.write("\t\t\t\t\t\t\t</td>\r\n");
            out.write("\t\t\t\t\t\t</tr>\r\n");
            out.write("          \t\t\t\r\n");
            out.write("          \t\t\t</form>\r\n");
            out.write("          \t\t\t\r\n");
            out.write("\t\t\t\t\t\r\n");
            out.write("          \t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
