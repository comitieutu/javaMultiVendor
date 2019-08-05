<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3><i class="fa fa-angle-right"></i> Update product</h3>
<div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i>UserProfile</h4>
            
            <s:form class="form-horizontal style-form" action="${pageContext.request.contextPath }/admin/user/userprofile" 
             method="post" modelAttribute="user" enctype="multipart/form-data">
            	<table  class="table table-striped table-advance table-hover">            															
            <tr>
                 <th> Name : ${user.username}</th>     
                	                                         
            </tr>
                       	
              <tr>
                <th> Email : ${user.email}></th>  
                  
            </tr>
            
            <tr>
            			<th><c:forEach var="r" items="${user.userroles }">
								Role: ${r.role.name }
									<br>
								</c:forEach>
						</th>          	  
            														 					 					
					
             </tr>
             
               <tr>
               <th>
               		
               		<s:select items="${roles }" itemLabel="name" itemValue="id" path="userroles[0].id.roleid" 
               		class="form-horizontal style-form"/>             		              		                 	              									                     
               			
					</th>
               </tr>
               
              
            <s:hidden path="id" />
              
               	</table>
                        
          		<div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-theme" type="submit">UpRole</button>
                    </div>
                </div>
                
               
               <a
					href="${pageContext.request.contextPath }/admin/user"><h3>Back</h3>
							</a>
				
            </s:form>
            
        </div>
    </div>
</div>		
                   
                  
								
		
					
					
                      
                        
           		
         
             
               
           
            
            
                   
                    
                      
               
            
            
            
            
					
			  
              
                   
                
              