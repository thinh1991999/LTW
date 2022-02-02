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
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
    <jsp:useBean id="handle" class="Beans.Handle" scope="session"></jsp:useBean>
	<jsp:useBean id="allProduct" class="Beans.AllProduct" scope="application"></jsp:useBean>
    <c:set var="product" value="${productSelected}"></c:set>
    <c:set var="user" value="${sessionScope.userLogin}"></c:set>
    <c:set var="suggestList" value="${suggestList}"></c:set>
    <c:set var="search" value="${handle.searchHistory}"></c:set>
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
							</ul></li>
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
								</ul></li>
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
				
			</div>
		</header>
        <!-- End--Header -->
        <div class="container container-product-detail">
            <div class="grid wide">
                <div class="row">
                    <div class="product-direct">
                        <a href="/Project--3/mainshow.jsp"class="product-direct-link">Shop</a>
                        <p >> ${product.name}</p>
                    </div>
                </div>
                <div class="row s-m-gutter product-detail">
                    <div class="col l-4 m-0 c-0">
                        <div class="product-image">
                            <div class="product-image_main" style="background-image: url(${product.urlImg})">
                            </div>
                            <div class="product-image_child-list">
                                <div class="product-image_child-back-btn">
                                    <i class="product-image_child-back-icon fas fa-chevron-left"></i>
                                </div>
                                <c:forEach var="item" items="${product.urlChild}">
	                                <div class="product-image_child-item" style="background-image: url(${item})">
	                                </div>
                                </c:forEach>
                                <div class="product-image_child-go-btn">
                                    <i class="product-image_child-back-icon fas fa-chevron-right"></i>
                                </div>
                            </div>
                            <div class="product-image_infor">
                                <div class="product-share-list">
                                    <p class="product-share-list-text">Share:</p>
                                    <a href="" class="product-share-list-link">
                                        <i class="product-share-list-icon fab fa-facebook"></i>
                                    </a>
                                    <a href="" class="product-share-list-link">
                                        <i class="product-share-list-icon fab fa-facebook"></i>
                                    </a>
                                    <a href="" class="product-share-list-link">
                                        <i class="product-share-list-icon fab fa-facebook"></i>
                                    </a>
                                </div>
                                <div class="product-fav">
                                    <i class="product-fav-icon far fa-heart"></i>
                                    <p class="product-fav-text">Liked(200)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-8 m-12 c-12 product-detail-wrap">
                    	<span class="product-detail-id" style="display:none">${product.id}</span>
                        <h3 class="product-detail-title">
                            ${product.name}
                        </h3>
                        <div class="product-detail-rating">
                            <div class="product-detail-rating_start">
                                 ${product.rateStart}
                                 <c:forEach begin="1" end="${product.rateStart}">
									<i class="product-detail-rating_start-icon fas fa-star"></i>
								</c:forEach>
								<c:forEach begin="1" end="${5-product.rateStart}">
									<i class="product-detail-rating_start-icon--blur fas fa-star"></i>
								</c:forEach>
                             
                            </div>
                            <div class="product-detail-rating_count">
                                <p class="product-detail-rating_count-assess">
                                    ${product.assess} assess
                                </p>
                            </div>
                            <div class="product-detail-rating_count">
                                <p class="product-detail-rating_count-bought">
                                
                                    ${product.countSold} sold
                                </p>
                            </div>
                        </div>
                        <div class="product-detail-price">
                            <div class="product-detail-price_old">
                            <p class="product-detail-price_old--hint">đ</p>
                            <fmt:formatNumber type="number" groupingUsed="true" value=" ${product.oldPrice}"></fmt:formatNumber>
                               
                            </div>
                            <div class="product-detail-price_new">
                            	<p class="product-detail-price_new--hint">đ</p>
                             <fmt:formatNumber type="number" groupingUsed="true" value=" ${product.newPrice}"></fmt:formatNumber>		
                            </div>
                            <div class="product-detail-price_sale">
                               ${product.sale}% SALE
                            </div>
                        </div>
       
                        <div class="product-detail-delivery">
                            <div class="product-detail-sub-title">
                                <fmt:message bundle="${main}" key="detailTransport"></fmt:message>
                            </div>
                            <i class="product-detail-delivery-icon fas fa-truck"></i>
                            <div class="product-detail-delivery-box">
                                <div class="product-detail-delivery-box__location">
                                   	<input type="text" name="delivery-loc" id="loc" value="location" style="display: none;">
                                    <div class="product-detail-sub-title2">
                                       <fmt:message bundle="${main}" key="detailTransportTo"></fmt:message>
                                    </div>
                                    <div class="product-detail-delivery-wrap">
                                        <div class="product-detail-delivery__title">
                                            <label for="loc" style="cursor: pointer;" class="product-detail-delivery__value"> Tp.HCM</label>
                                            <i class="fas fa-chevron-down product-detail-delivery__icon"></i>
                                        </div>
                                        <div class="product-detail-delivery__content">
                                            <ul class="delivery-list">
                                                <li class="delivery-item">Tp.HCM</li>
                                                <li class="delivery-item">Hà Nội</li>
                                                <li class="delivery-item">Nha Trang</li>
                                                <li class="delivery-item">Vũng Tàu</li>
                                                <li class="delivery-item">Tây Nguyên</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-detail-delivery-box__price">
                                    <input type="text" name="delivery-price" id="price" value="price" style="display: none;">
                                    <div class="product-detail-sub-title2">
                                        <fmt:message bundle="${main}" key="detailTransportPrice"></fmt:message>
                                    </div>
                                    <div class="product-detail-delivery__title">
                                        <label for="price" class="product-detail-delivery__price"> <fmt:message bundle="${main}" key="detailUnderfined"></fmt:message></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-detail-color">
                            
                            <div class="product-detail-sub-title">
                                <fmt:message bundle="${main}" key="detailColor"></fmt:message>
                            </div>
                            <div class="product-detail-color-choose-box">
	                            <div class="product-detail-color-radio-box">
	                            	<c:forEach var="item1" items="${product.color}">
	                            		<input type="radio" id="${item1}" name="color" value="${item1}" required>
	                            	 </c:forEach>
	                            </div>
	                            <c:forEach var="item2" items="${product.color}">
                            		<label for="${item2}" class="product-detail-color-box black-color ">
                                    	${item2}
                           			</label>
                            	 </c:forEach>
                                </label>
                            </div>
                        </div>
                        <div class="product-detail-size">
                            <div class="product-detail-size-radio-box">
                            	<c:forEach var="item" items="${product.size}">
	                            		<input type="radio" id="${item}" name="size" value="${item}">
                           	 	</c:forEach>	
                            </div>
                            <div class="product-detail-sub-title">
                                SIZE
                            </div>
                            <div class="product-detail-size-choose-box">
                            	<c:forEach var="item2" items="${product.size}">
                            		  <label for="${item2}" class="product-detail-size-box low-size ">
                                   			${item2}
                                		</label>
                            	 </c:forEach>
                            </div>
                        </div>
                        <div class="product-detail-amount">
                            <div class="product-detail-sub-title">
                               <fmt:message bundle="${main}" key="detailCount"></fmt:message>
                            </div>
                            <div class="product-detail-amount-select">
                                <div class="product-detail-amount-control">
                                    <div class="product-detail-amount-control_reduce">
                                       - 
                                    </div>
                                    <div class="product-detail-amount-control-box">
                                       <input type="text" class="product-detail-amount-control_amount" value="1" name="amount">
                                     </div>
                                     <div class="product-detail-amount-control_add">
                                        +
                                     </div>
                                </div>
                                <p class="product-detail-amount-text">${product.countAvai} <fmt:message bundle="${main}" key="detailAvailProduct"></fmt:message></p>
                            </div>
                        </div>
                        <span class="product-detail-mess" style="display: none;"><fmt:message bundle="${main}" key="detailMess"></fmt:message> </span>
                        <div class="product-detail-buy">
                            <button class="product-detail-add-cart" >
                                <i class="product-detail-add-cart-icon fas fa-shopping-cart"></i>
                                <fmt:message bundle="${main}" key="detailAdd"></fmt:message>
                            </button>
                            <a href="/"class="product-detail-buy-now">
                                <fmt:message bundle="${main}" key="detailBuyNow"></fmt:message>
                            </a>
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
                    	<c:forEach var="product" items="${suggestList}">
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
                    <p class="success-add-cart__title"><fmt:message bundle="${main}" key="detailAddToCart"></fmt:message></p>
                </div>
            </div>
        </div>
       
    <script src="assets/js/main.js"></script>
     <script src="assets/js/detail.js"></script>
     <script src="assets/js/header.js"></script>
     <script type="text/javascript">
     	
     </script>
</body>
</html>