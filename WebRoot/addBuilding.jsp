<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionadmin.jsp" %>

<jsp:include page="headeradmin.jsp"></jsp:include>
 

  <body>
       <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>ADD INFO</h2>
                        <p><a href="adminHomePage.jsp">ADMIN</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">UPDATE</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <img src="images/title.png" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Inner page heading end -->

    <!-- Contact Start from here -->
    <section class="at-contact-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-contact-form at-col-default-mar">
                        <form  action="Propertycontroller?op=add" method="post" >
                            <input type="text" name="propertyid" id="propertyid" class="form-control" placeholder="Property ID" onblur="return pid()">
                            <input type="text" name="area" id="area" class="form-control" placeholder="Full Area" onblur="return a()">
                            <select name="bedroom" id="bedroom" class="form-control" onblur="return bed()" >
                            	<option value="" disabled selected>Bedroom</option>
                            	<option value="1">1</option>
                            	<option value="2">2</option>
                            	<option value="3">3</option>
                            	<option value="4">4</option>
                            	<option value="5">5</option>
                            </select>
                            <select name="bathroom" id="bathroom" class="form-control" onblur="return bath()" >
                            	<option value="" disabled selected>Bathroom</option>
                            	<option value="1">1</option>
                            	<option value="2">2</option>
                            	<option value="3">3</option>
                            	<option value="4">4</option>
                            	<option value="5">5</option>
                            </select>
                            <select name="kitchen" id="kitchen" class="form-control" onblur="return kit()" >
                            	<option value="" disabled selected>Kitchen</option>
                            	<option value="1">1</option>
                            	<option value="2">2</option>
                            	<option value="3">3</option>
                            	<option value="4">4</option>
                            	<option value="5">5</option>
                            </select>
                            <select name="garage" id="garage" class="form-control" onblur="return gar()" >
                            	<option value="" disabled selected>Garage</option>
                            	<option value="1">1</option>
                            	<option value="2">2</option>
                            	<option value="3">3</option>
                            	<option value="4">4</option>
                            </select>
                            <input type="text" name="address" id="address" class="form-control" placeholder="Address" onblur="return add()">
                            <input type="text" name="city" id="city" class="form-control" placeholder="City" onblur="return ci()">
                            <input type="text" name="price" id="price" class="form-control" placeholder="Price" onblur="return pri()">
                            <select name="status"  class="form-control" >
                            	<option value="For Sale">For Sale</option>
                            	<option value="For Rent">For Rent</option>
                            </select>
                            <select name="balcony" id="balcony" class="form-control" onblur="return balcon()" >
                            	<option value="" disabled selected>Balcony</option>
                            	<option value="Yes">Yes</option>
                            	<option value="No">No</option>
                            </select>
                            <select name="pool" id="pool" class="form-control" onblur="return p()" >
                            	<option value="" disabled selected>Pool</option>
                            	<option value="Yes">Yes</option>
                            	<option value="No">No</option>
                            </select>
                            <iframe src="Uploadframe.jsp" frameborder="0" width="270" height="80"></iframe>
                            <textarea class="form-control" name="description" rows="5" placeholder="Description"></textarea>   
                                                     
                            <button class="btn btn-default hvr-bounce-to-right" type="submit" onclick="return aproperty()">ADD Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        <p>mailaddress@gmail.com</p>
                    </div>
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <p>+0123 (123) 6719900</p>
                    </div>
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <p>99, Big Building, Glasgow, United Kingdom.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  Contact end-->

    <div id="googleMap" style="width:100%; height:400px;"></div>

  </body>
  
  
  <jsp:include page="Footer.jsp"></jsp:include>
