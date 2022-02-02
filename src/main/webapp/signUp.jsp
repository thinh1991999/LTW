<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="stylesheet" href="assets/js/signup.js">
    <jsp:useBean id="handle" class="Beans.Handle" scope="session"></jsp:useBean>
</head>
<body>  
	<c:if test="${handle.language=='TV' }">
		<fmt:setLocale value="vi" />
	</c:if>
	<c:if test="${handle.language=='EL' }">
		<fmt:setLocale value="el" />
	</c:if>
	<fmt:setBundle basename="MyProperties.ShopMessages" var="main"></fmt:setBundle>
    <div class="main">
        <header class="header-signup">
            <div class="grid wide ">
                <div class="header-signup-wrap">
                    <div class="row header-signup-logo-box">
                        <div class="header-signup-logo"></div>
                        <span class="header-signup-title">
                        <fmt:message bundle="${main}" key="loginTitle1"></fmt:message>
                        </span>
                    </div>
                    <a href="/" class="header-signup-link">
                    	<fmt:message bundle="${main}" key="loginHelp"></fmt:message>
                    </a>
                </div>
            </div>
        </header>
        <div class="container sigup-container">
            <div class="grid wide">
                <div class="row signup__container">
                    <div class="col l-6 sigup-sologan">

                    </div>
                    <div class="col l-6 sigup-user">
               
                        <div class="signup-form-wrap">
                            <form action="signup" method="post" class="user-sigup-form">
                                <div class="form-title-wrap">
                                    <span class="form-sigup-title">
                                        <fmt:message bundle="${main}" key="loginTitle1"></fmt:message>
                                    </span>
                                    <div class="form-sigup-style">
                                       <fmt:message bundle="${main}" key="loginQr"></fmt:message>
                                    </div>
                                    <svg width="40" height="40" fill="none" class="form-sigup-style-change"><g clip-path="url(#clip0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M18 0H0v18h18V0zM3 15V3h12v12H3zM18 22H0v18h18V22zm-3 15H3V25h12v12zM40 0H22v18h18V0zm-3 15H25V3h12v12z" fill="#EE4D2D"></path><path d="M37 37H22.5v3H40V22.5h-3V37z" fill="#EE4D2D"></path><path d="M27.5 32v-8h-3v8h3zM33.5 32v-8h-3v8h3zM6 6h6v6H6zM6 28h6v6H6zM28 6h6v6h-6z" fill="#EE4D2D"></path><path fill="#fff" d="M-4.3 4l44 43.9-22.8 22.7-43.9-44z"></path></g><defs><clipPath id="clip0"><path fill="#fff" d="M0 0h40v40H0z"></path></clipPath></defs></svg>
                                </div>
                                <input type="text" placeholder="<fmt:message bundle="${main}" key="loginUserNamePlaceHolder"></fmt:message>" class="form-signup-input" required name="userName">
                                <input type="password" placeholder="<fmt:message bundle="${main}" key="loginPwPlaceHolder"></fmt:message>" class="form-signup-input" required name="password">
                                 <span class="form-mess"></span>
                                 <c:if test="${handle.isLogined=='t'}">
							    	<script>
							        var mess=document.querySelector('.form-mess') 
							        mess.innerHTML=""
							    	</script>
							    </c:if>
                                <c:if test="${handle.isLogined=='f'}">
							    	<jsp:setProperty property="isLogined" name="handle" value="o"/>
							    	<fmt:message bundle="${main}" key="loginErrorMess1" var="error"></fmt:message>
							    	<fmt:message bundle="${main}" key="loginTitle1" var="title1"></fmt:message>
							    	<script>
							        var mess=document.querySelectorAll('.form-mess')
							        var title=document.querySelector('.header-signup-title')
							        mess[0].innerHTML=`${error}`
							        title.innerHTML=`${title1}`
							    	</script>
							    </c:if>
                                <button type="submit" name=""class="form-sigup-btn"><fmt:message bundle="${main}" key="loginTitle1"></fmt:message></button>
                                <a href="#"class="form-sigup-link-sub">
                                   <fmt:message bundle="${main}" key="loginFogetPw"></fmt:message>
                                </a>
                                <div class="form-signup-or-wrap">
                                    <div class="form-sigup-or-wrap__line"></div>
                                    <fmt:message bundle="${main}" key="loginOr"></fmt:message>
                                    <div class="form-sigup-or-wrap__line"></div>
                                </div>
                                <div class="form-signup-social-wrap">
                                    <a href="#" class="form-signup-fb-wrap">
                                        <i class="fab fa-facebook form-signup-fb__icon"></i>
                                        Facebook
                                    </a>
                                    <a href="#" class="form-signup-google-wrap">
                                        <i class="fab fa-google form-signup-google__icon"></i>
                                        Google
                                    </a>
                                    <a href="#" class="form-signup-apple-wrap">
                                        <i class="fab fa-apple form-signup-apple__icon"></i>
                                        Apple
                                    </a>
                                </div>
                                <div class="form-sigup-to-reg-wrap">
                                    <fmt:message bundle="${main}" key="loginNoAccount"></fmt:message>
                                    <p  class="form-sigup-to-reg"><fmt:message bundle="${main}" key="loginTitle2"></fmt:message></p>
                                </div>
                            </form>
                        </div>
                        <div class="sigup-qr-form-wrap">
                            <div class="form-title-wrap">
                                <span class="form-sigup-title">
                                    <fmt:message bundle="${main}" key="loginTitle1"></fmt:message>
                                </span>
                                <div class="form-sigup-style">
                                    Đăng nhập bằng mật khẩu
                                </div>
                                <svg width="40" height="40" fill="none" class="form-qr-style-change"><g clip-path="url(#clip0)"><rect x="1.5" y="1.5" width="37" height="28" rx="2.5" stroke="#EE4D2D" stroke-width="3"></rect><path stroke="#EE4D2D" stroke-width="3" d="M22 38.5h11"></path><path stroke="#EE4D2D" stroke-width="10" d="M21 29v9"></path><path fill="#fff" d="M-12.28 0l43.933 43.933-22.72 22.72L-35 22.72z"></path><path d="M10.997 16.545l-2.76-.782.519-1.591 2.733 1.098-.176-3.067h1.723l-.176 3.129 2.663-1.081.519 1.608-2.813.783 1.846 2.338-1.397.993-1.6-2.567-1.582 2.479-1.397-.95 1.898-2.39zm8.156 0l-2.76-.782.52-1.591 2.732 1.098-.175-3.067h1.722l-.175 3.129 2.663-1.081.518 1.608-2.812.783 1.845 2.338-1.397.993-1.6-2.567-1.582 2.479-1.397-.95 1.898-2.39zm8.157 0l-2.76-.782.518-1.591 2.734 1.098-.176-3.067h1.723l-.176 3.129 2.663-1.081.519 1.608-2.813.783 1.846 2.338-1.398.993-1.6-2.567-1.581 2.479-1.398-.95 1.899-2.39z" fill="#EE4D2D"></path></g><defs><clipPath id="clip0"><path fill="#fff" d="M0 0h40v40H0z"></path></clipPath></defs></svg>
                            </div>
                            <div class="signup-qr-code-wrap">
                                <div class="signup-qr-code-img" style="background-image: url(https://th.bing.com/th/id/R.3e4489f23214f5ee98eb052475768d84?rik=YXR5vE8NZQE54g&riu=http%3a%2f%2fwww.blendb2b.com%2fhs-fs%2fhub%2f398024%2ffile-988136576-png%2fblog-files%2f130327113656.png%23keepProtocol&ehk=xPGsczMtuqbjo3NJqx0OEssFxSUtqFXfM%2f5%2fx7pSvnw%3d&risl=&pid=ImgRaw&r=0);"></div>
                            </div>
                            <div class="form-sigup-to-reg-wrap">
                                <fmt:message bundle="${main}" key="loginHaveAccount"></fmt:message>
                                <p  class="form-sigup-to-reg"><fmt:message bundle="${main}" key="loginTitle2"></fmt:message></p>
                            </div>
                        </div>
                 
                        
                        <div class="register-form-wrap" >
                            <form action="register" method="post" class="user-register-form">
                                <div class="form-title-wrap">
                                    <span class="form-sigup-title">
                                        <fmt:message bundle="${main}" key="loginTitle2"></fmt:message>
                                    </span>
                                </div>
                                <input type="text" placeholder="<fmt:message bundle="${main}" key="loginUserNamePlaceHolder"></fmt:message>" class="form-signup-input" required name="userNameReg">
                                <input type="password" placeholder="<fmt:message bundle="${main}" key="loginPwPlaceHolder"></fmt:message>" class="form-signup-input" required name="passwordReg">
                                <input type="password" placeholder="<fmt:message bundle="${main}" key="loginPwPlaceHolder2"></fmt:message>" class="form-signup-input" required name="passwordRegComfirm">
                                 <span class="form-mess"></span>
                                 <c:if test="${handle.isValidRegister=='t'}">
							    	<script>
							        var mess=document.querySelectorAll('.form-mess') 
							        mess[1].innerHTML=""
							    	</script>
							    </c:if>
                                <c:if test="${handle.isValidRegister=='f'}">
							    	<jsp:setProperty property="isValidRegister" name="handle" value="t"/>
							    	<fmt:message bundle="${main}" key="loginErrorMess2" var="error2"></fmt:message>
							    	<fmt:message bundle="${main}" key="loginTitle2" var="title2"></fmt:message>
							    	<script>
							    	var sigupFrom=document.querySelector('.signup-form-wrap')
							        var registerFrom=document.querySelector('.register-form-wrap')
							        sigupFrom.style.display="none"
							        registerFrom.style.display="block"
							        var mess=document.querySelectorAll('.form-mess')
							        var title=document.querySelector('.header-signup-title')
							        mess[1].innerHTML=`${error2}`
							        title.innerHTML=`${title2}`
							    	</script>
							    </c:if>
							       <c:if test="${handle.isValidRegister=='l'}">
							    	<jsp:setProperty property="isValidRegister" name="handle" value="t"/>
							    	<fmt:message bundle="${main}" key="loginErrorMess3" var="error3"></fmt:message>
							    	<fmt:message bundle="${main}" key="loginTitle2" var="title2"></fmt:message>
							    	<script>
							    	var sigupFrom=document.querySelector('.signup-form-wrap')
							        var registerFrom=document.querySelector('.register-form-wrap')
							        sigupFrom.style.display="none"
							        registerFrom.style.display="block"
							        var mess=document.querySelectorAll('.form-mess')
							        var title=document.querySelector('.header-signup-title')
							        mess[1].innerHTML=`${error3}`
							        title.innerHTML=`${title2}`
							    	</script>
							    </c:if>
							  	
                                <button type="submit" name=""class="form-sigup-btn"><fmt:message bundle="${main}" key="loginTitle2"></fmt:message></button>
                                <div class="form-signup-or-wrap">
                                    <div class="form-sigup-or-wrap__line"></div>
                                    <fmt:message bundle="${main}" key="loginOr"></fmt:message>
                                    <div class="form-sigup-or-wrap__line"></div>
                                </div>
                                <div class="form-signup-social-wrap">
                                    <a href="#" class="form-signup-fb-wrap">
                                        <i class="fab fa-facebook form-signup-fb__icon"></i>
                                        Facebook
                                    </a>
                                    <a href="#" class="form-signup-google-wrap">
                                        <i class="fab fa-google form-signup-google__icon"></i>
                                        Google
                                    </a>
                                    <a href="#" class="form-signup-apple-wrap">
                                        <i class="fab fa-apple form-signup-apple__icon"></i>
                                        Apple
                                    </a>
                                </div>
                                <p class="form-register-title-sub"><fmt:message bundle="${main}" key="loginRules"></fmt:message></p>
                                <div class="form-register-to-signup-wrap">
                                    <fmt:message bundle="${main}" key="loginHaveAccount"></fmt:message>
                                    <p  class="form-register-to-signup"><fmt:message bundle="${main}" key="loginTitle1"></fmt:message></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
			<div class="grid wide footer__container">
				<div class="row">
					<div class="col l-2-4 m-4 c-6">
						<h3 class="footer__heading">
							<fmt:message bundle="${main}" key="mainFooterTitle1"></fmt:message>
						</h3>
						<ul class="footer-list">
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle1Sub1"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle1Sub2"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle1Sub3"></fmt:message>
							</a></li>
						</ul>
					</div>
					<div class="col l-2-4 m-4 c-6">
						<h3 class="footer__heading">
							<fmt:message bundle="${main}" key="mainFooterTitle2"></fmt:message>
						</h3>
						<ul class="footer-list">
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle2Sub1"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle2Sub2"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<fmt:message bundle="${main}" key="mainFooterTitle2Sub3"></fmt:message>
							</a></li>
						</ul>
					</div>
					<div class="col l-2-4 m-4 c-6">
						<h3 class="footer__heading">
							<fmt:message bundle="${main}" key="mainFooterTitle3"></fmt:message>
						</h3>
						<ul class="footer-list">
							<li class="footer-item"><a href="" class="footer-link">
									<i class="footer--item__icon fab fa-facebook"></i> <fmt:message
										bundle="${main}" key="mainFooterTitle3Sub1"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<i class="footer--item__icon fab fa-instagram"></i> <fmt:message
										bundle="${main}" key="mainFooterTitle3Sub2"></fmt:message>
							</a></li>
							<li class="footer-item"><a href="" class="footer-link">
									<i class="footer--item__icon fab fa-linkedin"></i> <fmt:message
										bundle="${main}" key="mainFooterTitle3Sub3"></fmt:message>
							</a></li>
						</ul>
					</div>
					<div class="col l-2-4 m-4 c-6">
						<h3 class="footer__heading">
							<fmt:message bundle="${main}" key="mainFooterTitle4"></fmt:message>
						</h3>
						<li class="footer-item"><a href="" class="footer-link"> <fmt:message
									bundle="${main}" key="mainFooterTitle4Sub1"></fmt:message>
						</a></li>
						<li class="footer-item"><a href="" class="footer-link"> <fmt:message
									bundle="${main}" key="mainFooterTitle4Sub2"></fmt:message>
						</a></li>
						<li class="footer-item"><a href="" class="footer-link"> <fmt:message
									bundle="${main}" key="mainFooterTitle4Sub3"></fmt:message>
						</a></li>
					</div>
					<div class="col l-2-4 m-4 c-6">
						<h3 class="footer__heading">
							<fmt:message bundle="${main}" key="mainFooterTitle5"></fmt:message>
						</h3>
						<div class="footer__download">
							<img src="/assets/img/qr.png" alt="" class="footer__download-qr">
							<div class="footer__download-apps">
								<a href="" class="footer__download-apps__link"> <img
									src="/assets/img/googlePlay.png" alt="Goodle Play"
									class="footer__download-app-img">
								</a> <a href="" class="footer__download-apps__link"> <img
									src="/assets/img/appStore.png" alt="App Store"
									class="footer__download-app-img">
								</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row footer__bottom">
				<p class="footer__text">
					© 2021 -
					<fmt:message bundle="${main}" key="mainFooterEnd"></fmt:message>
				</p>
			</div>
		</footer>
    </div>
    <script src="assets/js/signup.js"></script>
    <c:if test="${handle.show =='register'}">
    	<jsp:setProperty property="show" name="handle" value="signUp"/>
    	<script>
         var showMessRegister=function(){
            alert("Đăng ký thành công")
        }
        showMessRegister()
    	</script>
    </c:if>
    <c:if test="${handle.isValidRegister=='f'}">
    	<jsp:setProperty property="isValidRegister" name="handle" value="t"/>
    	<script>
    	var sigupFrom=document.querySelector('.signup-form-wrap')
        var registerFrom=document.querySelector('.register-form-wrap')
        sigupFrom.style.display="none"
        registerFrom.style.display="block"
        alert("Tên đăng nhập đã tồn tại!!!")
    	</script>
    </c:if>
</body>
</html>