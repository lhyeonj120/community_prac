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
		
			<c:forEach items="${list}" var="board">
				<!-- Post preview-->
				<div class="post-preview">
					<a class="move" href="<c:out value='${board.b_id}'/>">
						<h2 class="post-title">
							<c:choose>
								<c:when test="${fn:length(board.title) gt 11}">
									<c:out value="${fn:substring(board.title, 0, 10)}"/>...
								</c:when>
								<c:otherwise>
									<c:out value="${board.title}"></c:out>
								</c:otherwise>
							</c:choose>
						</h2>
						<h3 class="post-subtitle">
							<c:choose>
								<c:when test="${fn:length(board.content) gt 21}">
									<c:out value="${fn:substring(board.content, 0, 20)}"/>...
								</c:when>
								<c:otherwise>
									<c:out value="${board.content}"></c:out>
								</c:otherwise>
							</c:choose>
						</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!"><c:out value="${board.writer}"/></a> on <fmt:formatDate pattern="yyyy.MM.dd" value="${board.regdate}"/>, 
						Updated on <fmt:formatDate pattern="yyyy.MM.dd" value="${board.update_date}"/>
					</p>
				</div>
				<!-- Divider-->
				<hr class="my-4" />
			</c:forEach>
			
			<form id="actionForm" action="/board/list" method="get">
			</form>
			
			<!-- Pager-->
			<div class="d-flex justify-content-end mb-4">
				<a class="btn btn-primary text-uppercase" href="#!">Older Posts →</a>
			</div>
		</div>
	</div>
</div>

<!-- Footer-->
<%@include file="../includes/footer.jsp"%>

