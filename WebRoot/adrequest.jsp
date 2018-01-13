<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionadmin.jsp" %>  
<jsp:include page="headeradmin.jsp"></jsp:include>

    <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>REMOVE USER REQUEST</h2>
                        <p><a href="adminHomePage.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Remove user request</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <img src="images/title.png" alt="">
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter start from here -->
    <section class="at-newsletter-sec jarallax at-over-layer-black">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    
                    <form class="input-group" action="removereq" method="get">
                        <div class="form-group">
                            <input class="form-control" name="name" id="name" placeholder="ENTER FULL NAME  ">
                        </div>
                        <span class="input-group-btn">
                          <button class="btn btn-default at-sub-btn hvr-bounce-to-right" type="submit">
                            REMOVE
                          </button>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Newsletter end -->
    

	
 <jsp:include page="Footer.jsp"></jsp:include>