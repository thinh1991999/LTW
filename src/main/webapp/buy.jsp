<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<link rel="stylesheet" href="assets/css/base.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/grid.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet"
	href="assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
<jsp:useBean id="handle" class="Beans.Handle" scope="session"></jsp:useBean>
<jsp:useBean id="allProduct" class="Beans.AllProduct" scope="application"></jsp:useBean>
<c:set var="user" value="${sessionScope.userLogin}"></c:set>
<c:set var="cart" value="${handle.cartUserLogined}"></c:set>
<c:set var="size" value="${sessionScope.size}"></c:set>
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
        <!-- Begin--Header -->
        <header class="header" style="height: 40px;"> 
            <div class="grid wide">
                <nav class="header__navbar hide-on-mobile-tablet">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item header__navbar-item--separate">
                           <fmt:message bundle="${main}" key="mainUseQrCode"></fmt:message>
                            <div class="header__qr">
                                <img src="/assets/img/qr.png" alt="" class="header__qr--img">
                                <div class="header__qr-apps">
                                    <a href="" class="header__qr-app">
                                        <img src="/assets/img/appStore.png" alt="" class="header__qr--download">
                                    </a>
                                    <a href="" class="header__qr-app">
                                        <img src="/assets/img/googlePlay.png" alt="" class="header__qr--download">
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="header__navbar-item">
                            <span class="header__navbar-item-tittle--no-click"><fmt:message
									bundle="${main}" key="mainConnect"></fmt:message></span>
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fab fa-facebook"></i>
                            </a>
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fab fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item">
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon far fa-bell"></i>
                            </a>
                            <a href="" class="header__navbar-item-link"><fmt:message
									bundle="${main}" key="mainAnnouce"></fmt:message></a>
                            <div class="header__navbar-notify ">
                                <div class="header__navbar-notify__header">
                                    <h3 class="header__navbar-notify-title"><fmt:message
									bundle="${main}" key="mainAnnouceTitle"></fmt:message></h3>
                                </div>
                                <ul class="header__notify-list">
                                    <li class="header__notify-item">
                                        <a href="" class="header__notify-link">
                                            <img src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg" alt="" class="header__notify-img">
                                            <div class="header__notify-content">
                                                <h3 class="header__notify-main">Xác thật chính xác nguồn gốc sản phẩm Ohui.</h3>
                                            <p class="header__notify-sub">Is allowance instantly strangers applauded discourse so. Separate entrance welcomed sensible laughing why one moderate shy..</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item  header__notify-item--readed">
                                        <a href="" class="header__notify-link">
                                            <img src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg" alt="" class="header__notify-img">
                                            <div class="header__notify-content">
                                                <h3 class="header__notify-main">Sale Sốc bộ dưỡng Ohui The First Tái tạo trẻ hóa da SALE OF 70%.</h3>
                                            <p class="header__notify-sub">Sub::Xác thật chính xác nguồn gốc sản phẩm.</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item">
                                        <a href="" class="header__notify-link">
                                            <img src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg" alt="" class="header__notify-img">
                                            <div class="header__notify-content">
                                                <h3 class="header__notify-main">Ohui chính thức ra mắt dòng son lì mới THE FIRST GENITURE LÍPSTICK</h3>
                                            <p class="header__notify-sub">Sale Sốc bộ dưỡng Ohui The First Tái tạo trẻ hóa da SALE OF 70%.</p>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <footer class="header__notify-footer">
                                    <a href="" class="header__notify-btn">
                                        <fmt:message
									bundle="${main}" key="mainAnnouceAll"></fmt:message>
                                    </a>
                                </footer>
                            </div>
                        </li>
                        <li class="header__navbar-item">
                            <a href="" class="header__navbar-item-link"><fmt:message
									bundle="${main}" key="mainHelp"></fmt:message></a>
                        </li>
                        <li class="header__navbar-item"><i
							class="header__navbar-icon fas fa-globe-asia"></i> 
							<c:if test="${handle.language=='TV' }">
								Tiếng Việt
							</c:if> <c:if test="${handle.language=='EL' }">
								English
							</c:if> 
							<ul class="header__navbar-lang-box">
								<li class="header__navbar-lang-item"><a
									href="./language?vl=tv">Tiếng Việt</a></li>
								<li class="header__navbar-lang-item"><a
									href="./language?vl=el">English</a></li>
							</ul>
						</li>
                        <!-- <li class="header__navbar-item header__navbar-item--bold header__navbar-item--separate">Đăng kí</li>
                        <li class="header__navbar-item header__navbar-item--bold">Đăng nhập</li> -->
                        <c:if test="${handle.isLogined =='t'}">
							<li class="header__navbar-item header__navbar-user"><img
								src="${user.urlAvt}"
								alt="" class="header__navbar-user-img"> <span
								class="header__navbar-user-name">${user.userName}</span>
								<ul class="header__navbar-user-list">
									<li class="header__navbar-user-item"><a
										href="./userProfile">
										<fmt:message
									bundle="${main}" key="mainAccount"></fmt:message>
										</a></li>
									<li class="header__navbar-user-item"><a href=""><fmt:message
									bundle="${main}" key="mainAddress"></fmt:message></a></li>
									<li class="header__navbar-user-item"><a href=""><fmt:message
									bundle="${main}" key="mainBoughtList"></fmt:message></a></li>
									<li class="header__navbar-user-item"><a href="./logout"><fmt:message
									bundle="${main}" key="mainLogout"></fmt:message></a></li>
								</ul>
							</li>
						</c:if>
						<c:if test="${handle.isLogined =='o'}">
							<div class="header__navbar-sigup-wrap">
								<li class="header__navbar-item"><a href="./signUp.jsp"
									class="header__navbar-item-link header__navbar-sigup-wrap-signup">
										<fmt:message bundle="${main}" key="mainLogin"></fmt:message>
								</a></li>
								<li class="header__navbar-item"><a href="./signUp.jsp"
									class="header__navbar-item-link"> <fmt:message
											bundle="${main}" key="mainRegister"></fmt:message>
								</a></li>
							</div>
						</c:if>
                    </ul>
                </nav>
                <ul class="header__sort-bar">
                    <li class="header__sort-item">
                        <a href="" class="header__sort-link">Liên quan </a>
                    </li>
                    <li class="header__sort-item header__sort-item--active">
                        <a href="" class="header__sort-link">Mới nhất</a>
                    </li>
                    <li class="header__sort-item">
                        <a href="" class="header__sort-link">Bán chạy</a>
                    </li>
                    <li class="header__sort-item">
                        <a href="" class="header__sort-link">Giá</a>
                    </li>
                </ul>
            </div>
        </header>
        <!-- End--Header -->
        <div class="container container-product-bought">
            <div class="row" style="background-color: white;">
                <div class="grid wide">
                    <div class="product-bought-header">
                        <div class="product-bought--logo-wrap">
                            <a href="./mainshow.jsp" class="product-bought--logo" style="background-image: url(https://media.istockphoto.com/vectors/online-shop-logo-designs-template-vector-illustration-vector-id1212212187);"></a>
                            <span class="product-bought--title"><fmt:message bundle="${main}" key="buyTitle"></fmt:message></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grid wide">
                <div class="row">
                    <div class="product-bought-avail" style="width: 100%;" >
                        <div class="product-bought--title-wrap">
                            <div class="product--title-left-box">
                                <input type="checkbox" class="check-box-select-all"> <fmt:message bundle="${main}" key="buyProduct"></fmt:message>
                            </div>
                            <div class="product--title-right-box">
                                <span class="product-title-sub">
                                    <fmt:message bundle="${main}" key="buyPrice"></fmt:message>
                                </span>
                                <span class="product-title-sub">
                                    <fmt:message bundle="${main}" key="buyCount"></fmt:message> 
                                </span>
                                <span class="product-title-sub">
                                    <fmt:message bundle="${main}" key="buyAmount"></fmt:message>
                                </span>
                                <span class="product-title-sub">
                                    <fmt:message bundle="${main}" key="buyHandle"></fmt:message>
                                </span>
                            </div>
                        </div>
                        <div class="product-bought-list">
                        	<c:forEach var="item" items="${cart}">
                        		 <div class="product-bought--item-wrap">
	                                <span class="product-bought-id" style="display: none;">${item.id}</span>
	                                <input type="checkbox" class="product-bought--item__check-box">
	                                <div class="product-bought--item__img" style="background-image: url(${item.urlImg});"></div>
	                                <span class="product-bought--item__title">
	                                   ${item.title}
	                                </span>
	                                <div class="product-bought--item__filter-wrap">
	                                    <span class="filter-title"><fmt:message bundle="${main}" key="buyType"></fmt:message>:</span>
	                                    <span class="filter-sub">
	                                        <span class="product-bought-color"> ${item.color}</span>,
	                                        <span class="product-bought-size"> ${item.size}</span>
	                                    </span>
	                                </div>
	                                <div class="product-bought--item__price-wrap">
	                                    <span class="product-bought--item__old-price">
	                                    <fmt:formatNumber type="number" groupingUsed="true">${item.oldPrice}</fmt:formatNumber>
	                                     đ</span>
	                                    <span class="product-bought--item__new-price">
	                                    <fmt:formatNumber type="number" groupingUsed="true">${item.price}</fmt:formatNumber>
	                                     đ</span>
	                                </div>
	                                <div class="product-bought--item__count-controller">
	                                    <div class="product-bought--item__left-count">-</div>
	                                    <input type="text" class="product-bought--item__value-count" value="${item.count}">
	                                    <div class="product-bought--item__right-count">+</div>
	                                </div>
	                                
	                                <span class="product-bought--item__final-price">0 đ</span>
	                                <button class="product-bought--item__delete-btn"><fmt:message bundle="${main}" key="buyDelete"></fmt:message></button>
                            	</div>
                        	</c:forEach>
                        </div>
                        <div class="product-bought--check-out-wrap">
                            <div class="product--title-left-box">
                                <input type="checkbox" class="check-box-select-all"> <fmt:message bundle="${main}" key="buyChooseAll"></fmt:message>(<span class="product-bought-count-all">0</span>)
                                <span class="product-bought--check-out__delete"><fmt:message bundle="${main}" key="buyDelete"></fmt:message></span>
                            </div>
                            <div class="product--title-right-box">
                                <fmt:message bundle="${main}" key="buyAllPrice"></fmt:message> (<span class="product-bought-count-checkout">0</span> <fmt:message bundle="${main}" key="buyProduct"></fmt:message> ): <span class="product-bought--check-out__price">0 đ</span>
                                <button class="product-bought--check-out__comfirm"><fmt:message bundle="${main}" key="buyCheckOut"></fmt:message></button>
                            </div>
                        </div>
                    </div>
                    <div class="product-bought-no-avail" style="display: none;">
                        <div class="product-bought-no-avail__wrap">
                            <div class="product-bought-no-avail__img" style="background-image: url(https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/cart/9bdd8040b334d31946f49e36beaf32db.png);"></div>
                            <span class="product-bought-no-avail__title"><fmt:message bundle="${main}" key="buyNoCart"></fmt:message></span>
                            <a href="./mainshow.jsp" class="product-bought-no-avail__buy-now"><fmt:message bundle="${main}" key="buyNow"></fmt:message></a >
                        </div>
                    </div>
                </div>
                <span class="product-slide--title"><fmt:message bundle="${main}" key="slideTitle"></fmt:message></span>
                <div class="product-slide-control-btn">
                    <div class="product-slide-left-btn">
                        <i class="fas fa-chevron-left product-slide-left-icon"></i>
                    </div>
                    <div class="product-slide-right-btn">
                        <i class="fas fa-chevron-right product-slide-right-icon"></i>
                    </div>
                </div>
                <div class="row s-m-gutter product-slide" >
                    <div class="row s-m-gutter product-slide-all">
                    	<c:forEach var="product" items="${allProduct.allProduct}">
                    		<div class="product-slide-box col ">
                            <c:url var="detailProduct" value="/detail-product">
										<c:param name="id" value="${product.id}"></c:param>
								</c:url>
	                            <a href="${detailProduct}" class="product-slide-link">
	                                 <div class="box-img" style="background-image: url(${product.urlImg})">
	                                 </div>
	                                 <h2 class="box-title">${product.name}</h2>
	                                 <div class="box-price-and-buy">
	                                     <span class="box-price">
	                                     <fmt:formatNumber type="number" groupingUsed="true">${product.newPrice}</fmt:formatNumber>
	                                     đ
	                                     </span>
	                                     <div class="box-price-icon-wrap">
	                                         <i class="fas fa-shopping-cart box-price-icon"></i>
	                                     </div>
	                                 </div>
	                            </a>
                         </div>
                    	</c:forEach>
                        
                         
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
        <div class="modal">
            <div class="modal__layer"></div>
            <div class="modal__content">
                <div class="success-add-cart">
                    <div class="success-add-cart-icon--wrap">
                        <i class="fas fa-check-circle success-add-cart__icon" ></i>
                    </div>
                    <p class="success-add-cart__title">Sản phẩm đã được thêm vào giỏ hàng</p>
                </div>
            </div>
        </div>
    </div>
    <div class="modal modal-bought">
        <div class="modal__layer modal__layer--bought"></div>
        <div class="modal__content">
            <div class="bought-error-wrap">
                <p class="bought-error-title">Bạn vẫn chưa chọn sản phẩm nào để mua.</p>
                <button class="bought-error-ok">OK</button>
            </div>
        </div>
    </div>
    <script src="assets/js/main.js">
    </script>
   <script src="assets/js/buy.js">
</script>
</body>
</html>