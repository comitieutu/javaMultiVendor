<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<aside>
  <div id="sidebar" class="nav-collapse ">
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
          <span>Category</span>
          </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/category">List</a></li>
          <li><a href="${pageContext.request.contextPath }/admin/category/create">Create</a></li>
        </ul>
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
      <li class="sub-menu">
        <a href="javascript:;">
          <i class="fa fa-desktop"></i>
          <span>Sale Order</span>
        </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/saleorder">List</a></li>
        </ul>
      </li>
      <li class="sub-menu">
        <a href="javascript:;">
          <i class="fa fa-desktop"></i>
          <span>Delivery</span>
        </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/delivery">List</a></li>
          <li><a href="${pageContext.request.contextPath }/admin/delivery/create">Create</a></li>
        </ul>
      </li>
      <li class="sub-menu">
        <a href="javascript:;">
          <i class="fa fa-desktop"></i>
          <span>Shipper</span>
        </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/shipper">List</a></li>
          <li><a href="${pageContext.request.contextPath }/admin/shipper/create">Create</a></li>
        </ul>
      </li>
        <li class="sub-menu">
        <a href="javascript:;">
          <i class="fa fa-desktop"></i>
          <span>User</span>
          </a>
        <ul class="sub">
          <li><a href="${pageContext.request.contextPath }/admin/user">List</a></li>
         
        </ul>
      </li>
      
           
                   
      
      
       
      
    </ul>
  </div>
</aside>