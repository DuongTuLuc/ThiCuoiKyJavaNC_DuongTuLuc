<%-- 
    Document   : list.jsp
    Created on : Sep 15, 2023, 8:14:39 AM
    Author     : KHOACNTT
--%>
<%@page import="dao.SanPhamDAO"%>
<%@page import="dao.SanPhamDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--nhung noi dung header.jsp-->
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<section class="bg-body-secondary text-center">
    <div class="container">
        <h1 class="jumbotron-heading text-muted">SIÊU THỊ GIÀY</h1>
        <p class="lead text-muted mb-0">CHUYÊN CUNG CẤP GIÀY THỂ THAO SỐ 1 TẠI VIỆT NAM</p>
    </div>
</section>


<div class="container" id="main-content">
    <div class="row">
        <div class="col-sm-3">
            <jsp:include page="shared/category.jsp" />             
        </div>
        <div class="col-sm-9">
            <div class="row">     
               <%
                   int maloai = request.getParameter("maloai") == null ? 1 : Integer.parseInt(request.getParameter("maloai"));

                    DecimalFormat fmt = new DecimalFormat("#,##0 đồng");
                    SanPhamDAO spDAO = new SanPhamDAO();
                    ArrayList<SanPham> dsSanPham =(ArrayList<SanPham>)request.getAttribute("dsSanPham");
                    for(SanPham sp: dsSanPham)
                    {
                %>
                  <div class="col-12 col-md-6 col-lg-4">
                    <div class="card mb-2">
                        <div class="card-header">
                          <%=sp.getTensp() %>
                        </div>
                        <div class="card-body">
                            <img class="card-img" src="assets/images/products/<%=sp.getHinh() %>" alt="Card image cap">                                
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <p class="btn btn-danger btn-block"><%=fmt.format(sp.getDongia()) %></p>
                                </div>
                                <div class="col">
                                    <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>              
                </div>
               <%
                   }
               %>
            </div>                       
        </div>

    </div>
</div>    

</div><!-- /.container -->
<!--nhung noi dung footer.jsp-->
<jsp:include page="shared/footer.jsp" />   
