<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>

<!-- Header -->
<%@include file="../includes/header.jsp"%>

<!-- Main Content-->
<div class="container px-4 px-lg-5">
	<div class="row gx-4 gx-lg-5 justify-content-center">
		<div class="col-md-10 col-lg-8 col-xl-7">
		<p>Posted On <fmt:formatDate pattern="yyyy.MM.dd hh:mm" value="${board.regdate}"/></p>
		<p>Updated On <fmt:formatDate pattern="yyyy.MM.dd hh:mm" value="${board.update_date}"/></p>
	
	            <div class="my-5">
	                <!-- * * * * * * * * * * * * * * *-->
	                <!-- * * SB Forms Contact Form * *-->
	                <!-- * * * * * * * * * * * * * * *-->
	                <!-- This form is pre-integrated with SB Forms.-->
	                <!-- To make this form functional, sign up at-->
	                <!-- https://startbootstrap.com/solution/contact-forms-->
	                <!-- to get an API token!-->
	                <div class="form-floating">
	                        <input class="form-control" id="title" name="title" type="text" value="<c:out value='${board.title}'/>" readonly="readonly"/>
	                        <label for="title">Title</label>
	                        <div class="invalid-feedback">A title is required.</div>
	                    </div>
	                    <div class="form-floating">
	                        <input class="form-control" id="writer" name="writer" type="text" value="<c:out value='${board.writer}'/>" readonly="readonly"/>
	                        <label for="writer">Writer</label>
	                        <div class="invalid-feedback">A writer is required.</div>
	                    </div>
	                    <div class="form-floating">
                        	<textarea class="form-control" id="content" name="content" style="height: 12rem" readonly="readonly"><c:out value='${board.content}'/></textarea>
                        	<label for="content">Content</label>
                            <div class="invalid-feedback">A content is required.</div>
                        </div>
                        <br />
	                    <!-- Submit success message-->
	                    <!---->
	                    <!-- This is what your users will see when the form-->
	                    <!-- has successfully submitted-->
	                    <div class="d-none" id="submitSuccessMessage">
	                        <div class="text-center mb-3">
	                            <div class="fw-bolder">Form submission successful!</div>     
	                        </div>
	                    </div>
	                    <!-- Submit error message-->
	                    <!---->
	                    <!-- This is what your users will see when there is-->
	                    <!-- an error submitting the form-->
	                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
	                    <!-- Submit Button-->
	                    <button class="btn btn-primary text-uppercase" data-oper="modify" onclick="location.href='/board/modify?b_id=<c:out value="${board.b_id}"/>'">Modify</button>
	                    <button class="btn btn-primary text-uppercase" data-oper="list" onclick="location.href='/board/list'">List</button>

	            </div>
		</div>
	</div>
</div>

<!-- Footer-->
<%@include file="../includes/footer.jsp"%>
