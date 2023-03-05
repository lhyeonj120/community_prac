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
		<p>Update your posting here</p>
	
	            <div class="my-5">
	                <!-- * * * * * * * * * * * * * * *-->
	                <!-- * * SB Forms Contact Form * *-->
	                <!-- * * * * * * * * * * * * * * *-->
	                <!-- This form is pre-integrated with SB Forms.-->
	                <!-- To make this form functional, sign up at-->
	                <!-- https://startbootstrap.com/solution/contact-forms-->
	                <!-- to get an API token!-->
	                <form id="form" action="/board/modify" method="post">
						<input type="hidden" class="form-control" id="b_id" name="b_id" type="text" value="<c:out value='${board.b_id}'/>"/>

	                	<div class="form-floating">
	                        <input class="form-control" id="title" name="title" type="text" value="<c:out value='${board.title}'/>" required="required"/>
	                        <label for="title">Title</label>
	                        <div class="invalid-feedback">A title is required.</div>
	                    </div>
	                    <div class="form-floating">
	                        <input class="form-control" id="writer" name="writer" type="text" value="<c:out value='${board.writer}'/>" required="required" readonly="readonly"/>
	                        <label for="writer">Writer</label>
	                        <div class="invalid-feedback">A writer is required.</div>
	                    </div>
	                    <div class="form-floating">
                        	<textarea class="form-control" id="content" name="content" style="height: 12rem" required="required"><c:out value='${board.content}'/></textarea>
                        	<label for="content">Content</label>
                            <div class="invalid-feedback">A content is required.</div>
                        </div>

                        <input class="form-control" id="regdate" name="regdate" value="<fmt:formatDate pattern="yyyy.MM.dd" value="${board.regdate}"/>" type="hidden"/>
                        <input class="form-control" id="update_date" name="update_date" value="<fmt:formatDate pattern="yyyy.MM.dd" value="${board.update_date}"/>" type="hidden"/>
                        
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
	                    <button class="btn btn-primary text-uppercase" id="submitButton" type="submit">Send</button>
	                    <button class="btn btn-primary text-uppercase" data-oper="remove" onclick="location.href='/board/remove?b_id=<c:out value="${board.b_id}"/>'">Remove</button>
	                    <button class="btn btn-primary text-uppercase" data-oper="list" onclick="location.href='/board/list'">List</button>
					</form>
	            </div>
		</div>
	</div>
</div>

<!-- Footer-->
<%@include file="../includes/footer.jsp"%>
