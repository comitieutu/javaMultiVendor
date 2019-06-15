<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<aside>
  <div id="sidebar" class="nav-collapse ">
    <!-- sidebar menu start-->
    <ul class="sidebar-menu" id="nav-accordion">
      <p class="centered"><a href="${pageContext.request.contextPath }/admin"><img src="img/ui-sam.jpg" class="img-circle" width="80"></a></p>
      <h5 class="centered">Le comi</h5>
      <li class="mt">
        <a class="active" href="${pageContext.request.contextPath }/admin">
          <i class="fa fa-dashboard"></i>
          <span>Dashboard</span>
          </a>
      </li>
      <li class="sub-menu">
        <a href="javascript:;">
          <i class="fa fa-desktop"></i>
          <span>Product</span>
          </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/product">List</a></li>
          <li><a href="${pageContext.request.contextPath }/admin/product/create">Create</a></li>
        </ul>
      </li>
    </ul>
    <!-- sidebar menu end-->
  </div>
</aside>