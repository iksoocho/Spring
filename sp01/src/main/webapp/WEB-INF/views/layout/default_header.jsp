<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <div class="b-example-divider"></div>

  <header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
      
      <!-- 경로 설정시 절대경로라 포트 다음부터 해줘야함. -->
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="${pageContext.request.contextPath}" class="nav-link px-2 text-secondary">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/empList" class="nav-link px-2 text-white">전체사원 조회</a></li>
          <li><a href="${pageContext.request.contextPath}/empInsert" class="nav-link px-2 text-white">사원정보 등록</a></li>
          <li><a href="${pageContext.request.contextPath}/boardList" class="nav-link px-2 text-white">게시글 목록</a></li>
          <li><a href="${pageContext.request.contextPath}/boardInsert" class="nav-link px-2 text-white">게시글 등록</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
        </form>

        <div class="text-end">
          <button type="button" class="btn btn-outline-light me-2">Login</button>
          <button type="button" class="btn btn-warning">Sign-up</button>
        </div>
      </div>
    </div>
  </header>