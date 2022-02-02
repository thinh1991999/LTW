
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
<jsp:useBean id="allProduct" class="Beans.AllProduct"
	scope="application"></jsp:useBean>
<c:if test="${sessionScope.change==null }">
	<c:set var="allProductShow" value="${allProduct.allProduct}"></c:set>
</c:if>
<c:if test="${sessionScope.change=='on'}">
	<c:set var="allProductShow" value="${applicationScope.allProductShow}"></c:set>
</c:if>
<c:if test="${sessionScope.change=='search'}">
	<c:set var="allProductShow" value="${searchProduct}"></c:set>
</c:if>
<c:set var="change" value="${null}" scope="session"></c:set>
<c:set var="user" value="${sessionScope.userLogin}"></c:set>
<c:set var="cart" value="${handle.cartUserLogined}"></c:set>
<c:set var="size" value="${sessionScope.size}"></c:set>
<c:set var="search" value="${handle.searchHistory}"></c:set>
<c:set var="valueSearch" value="${valueSearch}"></c:set>
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
		<header class="header">
			<div class="grid wide">
				<nav class="header__navbar hide-on-mobile-tablet">
					<ul class="header__navbar-list">
						<li class="header__navbar-item header__navbar-item--separate">
							<fmt:message bundle="${main}" key="mainUseQrCode"></fmt:message>

							<div class="header__qr">
								<img src="/assets/img/qr.png" alt="" class="header__qr--img">
								<div class="header__qr-apps">
									<a href="" class="header__qr-app"><img
										src="/assets/img/appStore.png" alt=""
										class="header__qr--download"> </a> <a href=""
										class="header__qr-app"> <img
										src="/assets/img/googlePlay.png" alt=""
										class="header__qr--download">
									</a>
								</div>
							</div>
						</li>
						<li class="header__navbar-item"><span
							class="header__navbar-item-tittle--no-click"> <fmt:message
									bundle="${main}" key="mainConnect"></fmt:message>
						</span> <a href="" class="header__navbar-icon-link"> <i
								class="header__navbar-icon fab fa-facebook"></i>
						</a> <a href="" class="header__navbar-icon-link"> <i
								class="header__navbar-icon fab fa-instagram"></i>
						</a></li>
					</ul>
					<ul class="header__navbar-list">
						<li class="header__navbar-item"><a href=""
							class="header__navbar-icon-link"> <i
								class="header__navbar-icon far fa-bell"></i>
						</a> <a href="" class="header__navbar-item-link"> <fmt:message
									bundle="${main}" key="mainAnnouce"></fmt:message>
						</a>
							<div class="header__navbar-notify ">
								<div class="header__navbar-notify__header">
									<h3 class="header__navbar-notify-title">
									<fmt:message
									bundle="${main}" key="mainAnnouceTitle"></fmt:message>
									</h3>
								</div>
								<ul class="header__notify-list">
									<li class="header__notify-item"><a href=""
										class="header__notify-link"> <img
											src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg"
											alt="" class="header__notify-img">
											<div class="header__notify-content">
												<h3 class="header__notify-main">Xác thật chính xác
													nguồn gốc sản phẩm Ohui.</h3>
												<p class="header__notify-sub">Is allowance instantly
													strangers applauded discourse so. Separate entrance
													welcomed sensible laughing why one moderate shy..</p>
											</div>
									</a></li>
									<li class="header__notify-item  header__notify-item--readed">
										<a href="" class="header__notify-link"> <img
											src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg"
											alt="" class="header__notify-img">
											<div class="header__notify-content">
												<h3 class="header__notify-main">Sale Sốc bộ dưỡng Ohui
													The First Tái tạo trẻ hóa da SALE OF 70%.</h3>
												<p class="header__notify-sub">Sub::Xác thật chính xác
													nguồn gốc sản phẩm.</p>
											</div>
									</a>
									</li>
									<li class="header__notify-item"><a href=""
										class="header__notify-link"> <img
											src="https://bettertransport.org.uk/sites/default/files/21.01.31.traffic-free-social.jpg"
											alt="" class="header__notify-img">
											<div class="header__notify-content">
												<h3 class="header__notify-main">Ohui chính thức ra mắt
													dòng son lì mới THE FIRST GENITURE LÍPSTICK</h3>
												<p class="header__notify-sub">Sale Sốc bộ dưỡng Ohui The
													First Tái tạo trẻ hóa da SALE OF 70%.</p>
											</div>
									</a></li>
								</ul>
								<footer class="header__notify-footer">
									<a href="" class="header__notify-btn">
										<fmt:message
									bundle="${main}" key="mainAnnouceAll"></fmt:message>
									 </a>
								</footer>
							</div></li>
						<li class="header__navbar-item"><a href=""
							class="header__navbar-item-link"><fmt:message
									bundle="${main}" key="mainHelp"></fmt:message></a></li>

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
								src="${user.urlAvt}" alt="" class="header__navbar-user-img">
								<span class="header__navbar-user-name">${user.userName}</span>
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
				<div class="header-with-search">
					<label for="header-search-mobile-check"
						class="header__search-mobile"> <i
						class="header__search-mobile fas fa-search"></i>
					</label>
					<div class="header__logo hide-on-tablet">
						<div class="product-bought--logo-wrap">
							<a href="./mainshow.jsp" class="product-bought--logo"
								style="background-image: url(https://media.istockphoto.com/vectors/online-shop-logo-designs-template-vector-illustration-vector-id1212212187);"></a>
						</div>
					</div>
					<input type="checkbox" hidden id="header-search-mobile-check"
						class="header__search-mobile-check">
					<div class="header__search-wrap">
						<form action="search" method="get" class="header__search ">
						<div class="header__search-input-wrap">	
							<c:if test="${valueSearch!= null }">
								<input type="text"
								value="${valueSearch}"
								class="header__search-input" name="value" autocomplete="off" >
							</c:if>
							<c:if test="${valueSearch== null }">
								<input type="text"
								placeholder="<fmt:message bundle="${main}" key="mainSearchPlaceholder"></fmt:message>"
								class="header__search-input" name="value" autocomplete="off">
							</c:if>
						</div>
						
							<button type="submit" class="header__search-btn-search">
								<i class="header__search-btn-search-icon fas fa-search"></i>
							</button>
						</form>
						<div class="header__search-history">
								<p class="header__search-history-title"><fmt:message bundle="${main}" key="mainSearchHistory"></fmt:message></p>
								<ul class="header__search-history-list">
									<c:forEach var="item" items="${search}">
										<li class="header__search-history-item">
										<c:url var="search" value="/search">
											<c:param name="value" value="${item}"></c:param>
										</c:url>
										<a href="${search}">${item}</a></li>
									</c:forEach>
								</ul>
							</div>
					</div>
					<div class="header__cart">
						<div class="header_cart-wrap">
							<!-- No cart::header__cart-list--no-cart -->
							<i class="header__cart-icon fas fa-cart-plus"></i> <span
								class="header_cart-notice">0</span>
							<div class="header__cart-list">
								<img
									src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/assets/9bdd8040b334d31946f49e36beaf32db.png"
									alt="" class="header__cart-list-no-cart-img"> <span
									class="header__cart-no-cart-title">Chưa có sản phẩm</span>
								<h4 class="header__cart-title">
									<fmt:message
										bundle="${main}" key="mainCartTitle"></fmt:message>
								</h4>
								<ul class="header__cart-list-cart">
									<c:forEach var="item" items="${cart}">
										<li class="header__cart-item-cart"><img
											src="${item.urlImg}" alt="" class="header__cart-item-img">
											<div class="header__cart-info">
												<div class="header__cart-info-header">
													<h4 class="header__cart-info-name">${item.title}</h4>
													<div class="header__cart-price-wrap">
														<span class="header__cart-item-price"> <fmt:formatNumber
																type="number" groupingUsed="true">${item.price}</fmt:formatNumber>
															đ
														</span> <span class="header__cart-item-mutiply">x</span> <span
															class="header__cart-item-quanlity">${item.count}</span>
													</div>
												</div>
												<div class="header__cart-info-body">
													<h4 class="header__cart-item-style">Phân loại hàng:
														Bạc</h4>
													<c:url var="remove" value="/remove">
														<c:param name="id" value="123"></c:param>
													</c:url>
													<a class="header__cart-item-remove">Xóa</a>
												</div>
											</div></li>
									</c:forEach>
								</ul>

								<a href="./buy.jsp"
									class="header__cart-view-cart btn btn--primary"> <fmt:message
										bundle="${main}" key="mainCartCheck"></fmt:message>
								</a>
							</div>
						</div>
					</div>
				</div>
				<ul class="header__sort-bar">
					<li class="header__sort-item"><a href=""
						class="header__sort-link">Liên quan </a></li>
					<li class="header__sort-item header__sort-item--active"><a
						href="" class="header__sort-link">Mới nhất</a></li>
					<li class="header__sort-item"><a href=""
						class="header__sort-link">Bán chạy</a></li>
					<li class="header__sort-item"><a href=""
						class="header__sort-link">Giá</a></li>
				</ul>
			</div>
		</header>
		<!-- End--Header -->
		<div class="container">
			<div class="grid wide">
				<div class="row s-m-gutter app__container">
					<div class="home__no-item">
		              <img
		                src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg//assets/a60759ad1dabe909c46a817ecbf71878.png"
		                alt=""
		              />
		              <span><fmt:message bundle="${main}" key="mainNoItemTitle"></fmt:message></span>
		              <p><fmt:message bundle="${main}" key="mainNoItemSub"></fmt:message></p>
		            </div>
					<div class="col l-2 m-0 c-0 home__menu">
						<nav class="category">
							<h3 class="category__header">
								<i class="category__header-icon fas fa-list"></i>
								<fmt:message bundle="${main}" key="mainMenu"></fmt:message>
							</h3>
							<ul class="category-list">
								<li class="category-item category-item--active"><c:if
										test="${sessionScope.s=='all' || sessionScope.s==null}">
										<li class="category-item category-item--active">
									</c:if> <c:if test="${sessionScope.s!='all' && sessionScope.s!=null }">
										<li class="category-item">
									</c:if> <a href="./sort?status=all" class="category-item__link"> <fmt:message
											bundle="${main}" key="mainAll"></fmt:message>
								</a></li>
								<c:if test="${sessionScope.s=='ak'}">
									<li class="category-item category-item--active">
								</c:if>
								<c:if test="${sessionScope.s!='ak'}">
									<li class="category-item">
								</c:if>
								<a href="./sort?status=all-ak" class="category-item__link">
									<fmt:message bundle="${main}" key="mainShirt"></fmt:message>
								</a>
								</li>

								<c:if test="${sessionScope.s=='gi'}">
									<li class="category-item category-item--active">
								</c:if>
								<c:if test="${sessionScope.s!='gi'}">
									<li class="category-item">
								</c:if>


								<a href="./sort?status=all-gi" class="category-item__link">
									<fmt:message bundle="${main}" key="mainShoes"></fmt:message>
								</a>
								</li>
								<c:if test="${sessionScope.s=='de'}">
									<li class="category-item category-item--active">
								</c:if>
								<c:if test="${sessionScope.s!='de'}">
									<li class="category-item">
								</c:if>
								<a href="#" class="category-item__link"> <fmt:message
										bundle="${main}" key="mainSandan"></fmt:message>
								</a>
								</li>
								<c:if test="${sessionScope.s=='dh'}">
									<li class="category-item category-item--active">
								</c:if>
								<c:if test="${sessionScope.s!='dh'}">
									<li class="category-item">
								</c:if>
								<a href="./sort?status=all-dh" class="category-item__link">
									<fmt:message bundle="${main}" key="mainWatch"></fmt:message>
								</a>
								</li>

								<c:if test="${sessionScope.s=='qu'}">
									<li class="category-item category-item--active">
								</c:if>
								<c:if test="${sessionScope.s!='qu'}">
									<li class="category-item">
								</c:if>
								<a href="./sort?status=all-qu" class="category-item__link">
									<fmt:message bundle="${main}" key="mainRousers"></fmt:message>
								</a>
								</li>
							</ul>
						</nav>
					</div>
					<div class="col l-10 m-12 c-12 home__nav-search">
						<div class="home-filter hide-on-mobile-tablet">
							<span class="home-filter__title"> <fmt:message
									bundle="${main}" key="mainSort"></fmt:message>
							</span>
							<button class="btn home-filter_btn">
								<fmt:message bundle="${main}" key="mainSortPopular"></fmt:message>
							</button>
							<c:if test="${sessionScope.status=='new'}">
								<a href="./sort?status=sort${sessionScope.s}New"
									class="
								btn btn--primary home-filter_btn"> <fmt:message
										bundle="${main}" key="mainSortNew"></fmt:message>
								</a>
							</c:if>
							<c:if test="${sessionScope.status!='new'}">
								<a href="./sort?status=sort${sessionScope.s}New"
									class="
								btn  home-filter_btn"> <fmt:message
										bundle="${main}" key="mainSortNew"></fmt:message></a>
							</c:if>
							<c:if test="${sessionScope.status=='sold'}">
								<a href="./sort?status=sort${sessionScope.s}Sold"
									class="btn btn--primary home-filter_btn"> <fmt:message
										bundle="${main}" key="mainSortBestSold"></fmt:message></a>
							</c:if>
							<c:if test="${sessionScope.status!='sold'}">
								<a href="./sort?status=sort${sessionScope.s}Sold"
									class="btn home-filter_btn"> <fmt:message bundle="${main}"
										key="mainSortBestSold"></fmt:message></a>
							</c:if>
							<div class="select-input">
								<c:if test="${sessionScope.status=='priceLH'}">
									<span class="select-input__label select-input__label--active"><fmt:message
											bundle="${main}" key="mainSortPriceLtH"></fmt:message></span>
								</c:if>
								<c:if test="${sessionScope.status=='priceHL'}">
									<span class="select-input__label select-input__label--active"><fmt:message
											bundle="${main}" key="mainSortPriceHtL"></fmt:message></span>
								</c:if>
								<c:if
									test="${sessionScope.status!='priceHL' && sessionScope.status!='priceLH'}">
									<span class="select-input__label "><fmt:message
											bundle="${main}" key="mainSortPrice"></fmt:message></span>
								</c:if>
								<i class="select-input__icon fas fa-angle-down"></i>
								<ul class="select-input__list">
									<li class="select-input__item "><a
										href="./sort?status=${sessionScope.s}price-LH"
										class="select-input__link"><fmt:message bundle="${main}"
												key="mainSortPriceLtH"></fmt:message></a></a></li>
									<li class="select-input__item"><a
										href="./sort?status=${sessionScope.s}price-HL"
										class="select-input__link"> <fmt:message bundle="${main}"
												key="mainSortPriceHtL"></fmt:message></a></a></li>
								</ul>
							</div>
							
						</div>

						<div class="home-product">
							<div class="row s-m-gutter">
								<c:forEach var="product" items="${allProductShow}">
									<div class="col l-2-4 m-4 c-6 c-6 c-6 home-product-wrap">
										<c:url var="detailProduct" value="/detail-product">
											<c:param name="id" value="${product.id}"></c:param>
										</c:url>
										<a href="${detailProduct}" class="home-product-item">
											<div class="home-product-item__img"
												style="background-image: url(${product.urlImg});"></div>
											<div class="home-product-item-content">
												<h3 class="home-product-item__title">${product.name}</h3>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old"> <fmt:formatNumber
															type="number" groupingUsed="true">${product.oldPrice}</fmt:formatNumber>
														đ
													</span> <span class="home-product-item__price-current"> <fmt:formatNumber
															type="number" groupingUsed="true">${product.newPrice}</fmt:formatNumber>
														đ
													</span> </span>
												</div>
												<div class="home-product-item__action">

													<span class="home-product-item__like "> <i
														class="home-product-item__like-icon-unliked far fa-heart"></i>
														<i class="home-product-item__like-icon-liked fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<c:forEach begin="1" end="${product.rateStart}">
															<i class="home-product-item__star--gold fas fa-star"></i>
														</c:forEach>
														<c:forEach begin="1" end="${5-product.rateStart}">
															<i class="fas fa-star"></i>
														</c:forEach>

													</div>
													<span class="home-product-item__solen">
														${product.countSold} <fmt:message bundle="${main}"
															key="mainSold"></fmt:message>
													</span>
												</div>
												<div class="home-product-item-info">
													<span class="home-product-item-info__produce">Whoo</span> <span
														class="home-product-item-info__adress">${product.origin}</span>
												</div>
											</div>
											<div class="home-product-item__favourite">
												<i class="fas fa-check"></i> <span><fmt:message
														bundle="${main}" key="mainFavorite"></fmt:message></span>
											</div>
											<div class="home-product-item__price-reduce">
												<span class="home-product-item__price-reduce__percent">${product.sale}%</span>
												<span class="home-product-item__price-reduce__label"><fmt:message
														bundle="${main}" key="mainSale"></fmt:message></span>
											</div>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
						<ul class="pagination home-product__pagination">

						</ul>
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
	<script src="assets/js/mainshow.js"></script>
	<script src="assets/js/header.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>