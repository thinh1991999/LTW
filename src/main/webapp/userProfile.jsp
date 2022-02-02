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
    <link rel="stylesheet" href="assets/js/signup.js">
    <jsp:useBean id="handle" class="Beans.Handle" scope="session"></jsp:useBean>
    <c:set var="cart" value="${handle.cartUserLogined}"></c:set>
    <c:set var="user" value="${sessionScope.userLogin}"></c:set>
    <c:set var="listBought" value="${listBought}"></c:set>
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
                <div class="row">
                    <div class="col l-2">
                        <nav class="user-control">
                            <div class="user-header">
                                <div class="user-header__img" style="background-image:url(https://th.bing.com/th/id/R.07838ed24fd725fa1e05d22eb50b5b54?rik=NW2B0AU7KX5F1w&riu=http%3a%2f%2fimages.summitmedia-digital.com%2fpreview%2fimages%2f2017%2f05%2f23%2fnm_suzy.jpg&ehk=2pHxC5xKN0NNh%2blCqKCKMCoQ4FuMQLg2BeTvMbZxEmc%3d&risl=&pid=ImgRaw&r=0);"></div>
                                <div class="user-header__box-title">
                                    <p class="user-header--user-name">${user.userName}</p>
                                    <span class="user-header--sub">
                                        <i class="fas fa-pen"></i> <fmt:message bundle="${main}" key="accountEdit"></fmt:message>
                                    </span>
                                </div>
                            </div>
                            <div class="user-control-wrap">
                                <i class="far fa-user user-control--icon"></i>
                                <ul class="user-control-list">
                                    <li class="user-control-item"><fmt:message bundle="${main}" key="accountTitle1"></fmt:message></li>
                                    <li class="user-control-item user-control-item__active" ><fmt:message bundle="${main}" key="accountTitle1Sub1"></fmt:message></li>
                                    <li class="user-control-item"><fmt:message bundle="${main}" key="accountTitle1Sub2"></fmt:message></li>
                                    <li class="user-control-item"><fmt:message bundle="${main}" key="accountTitle1Sub3"></fmt:message></li>
                                    <li class="user-control-item"><fmt:message bundle="${main}" key="accountTitle1Sub4"></fmt:message></li>
                                </ul>
                            </div>
                            <div class="user-bought-list">
                                <i class="fas fa-clipboard-list user-bought-list__icon"></i>
                                <p class="user-bought-list__title"><fmt:message bundle="${main}" key="accountTitle2"></fmt:message></p>
                            </div>
                            <div class="user-annouce">
                                <i class="far fa-bell user-annouce__icon"></i>
                                <p class="user-annouce__title"><fmt:message bundle="${main}" key="accountTitle3"></fmt:message></p>
                            </div>
                        </nav>
                    </div>
                    <div class="col l-10">
                        <div class="user-detail--wrap" >
                            <div class="user-detail">
                                <div class="user-detail-header">
                                    <h2 class="user-detail--title"><fmt:message bundle="${main}" key="accountMyProfile"></fmt:message></h2>
                                    <span class="user-detail--sub"><fmt:message bundle="${main}" key="accountManagerProfile"></fmt:message></span>
                                </div>
                                <div class="user-detail-container">
                                    <form action="./userSave" method="GET" class="user-detail--form">
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                                <fmt:message bundle="${main}" key="accountT1"></fmt:message>
                                            </div>
                                            <span class="user-detail-form--user-name">${user.userName}</span>
                                        </div>
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                               <fmt:message bundle="${main}" key="accountT2"></fmt:message>
                                            </div>
                                            <input type="text" class="user-detail-form--input" name="name" value="${user.fullName}">
                                        </div>
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                                Email
                                            </div>
                                            <input type="email" class="user-detail-form--input" name="email" value="${user.email}" required>
                                        </div>
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                                <fmt:message bundle="${main}" key="accountT4"></fmt:message>
                                            </div>
                                            <input type="text" class="user-detail-form--input" name="sdt" value="${user.sdt}" required>
                                        </div>
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                               <fmt:message bundle="${main}" key="accountT5"></fmt:message>
                                            </div>
                                            <c:set var="items" value='<%=new String[]{"Nam","Nữ","Khác"}%>'></c:set>
                                          	<c:forEach var="item" items="${items}">
                                          		<c:if test="${user.gender== item}">
                                          			<input type="radio" name="gender"  value="${item}" class="user-detail-form--input-radio" checked required> ${item}
                                          		</c:if>
                                          		<c:if test="${user.gender!= item}">
                                          			<input type="radio" name="gender"  value="${item}" class="user-detail-form--input-radio" required> ${item}
                                          		</c:if>
                                          	</c:forEach>
                                        </div>
                                        <div class="user-detail--form-item">
                                            <div class="user-detail-form--title">
                                               <fmt:message bundle="${main}" key="accountT6"></fmt:message>
                                            </div>
                                            <div class="user-detail-form-day-wrap ">
                                                <div class="user-detail-form-day-box">
                                                  <span class="user-detail-form-date-wrap__day-value">${user.dateOfBirth.day}</span><i class="fas fa-chevron-down user-detail-form-date-wrap__icon"></i>
                                                </div>
                                                <ul class="user-detail-form-day-options">
                                                    
                                                    
                                                </ul>
                                            </div>
                                            <div class="user-detail-form-month-wrap">
                                                <div class="user-detail-form-month-box">
                                                    <span class="user-detail-form-date-wrap__month-value">Tháng ${user.dateOfBirth.month}</span><i class="fas fa-chevron-down user-detail-form-date-wrap__icon"></i>
                                                </div>
                                                <ul class="user-detail-form-month-options">
                                                   
                                                    
                                                </ul>
                                            </div>
        
                                            <div class="user-detail-form-year-wrap">
                                                <div class="user-detail-form-year-box">
                                                    <span class="user-detail-form-date-wrap__year-value">${user.dateOfBirth.year}</span> <i class="fas fa-chevron-down user-detail-form-date-wrap__icon"></i>
                                                </div>
                                                <ul class="user-detail-form-year-options">
                                                </ul>
                                            </div>
                                        </div>
                                        <input type="text" class="user-detail-form-day-input" name="day" style="display: none;">
                                        <input type="text" class="user-detail-form-month-input" name="month" style="display: none;">
                                        <input type="text" class="user-detail-form-year-input" name="year" style="display: none;">
                                        <button type="submit" class="user-detail-form--submit">Lưu</button>
                                    </form>
                                    <div class="user-detail--img-handle">
                                        <div class="user-detail--avt-show" style="background-image: url(https://th.bing.com/th/id/R.07838ed24fd725fa1e05d22eb50b5b54?rik=NW2B0AU7KX5F1w&riu=http%3a%2f%2fimages.summitmedia-digital.com%2fpreview%2fimages%2f2017%2f05%2f23%2fnm_suzy.jpg&ehk=2pHxC5xKN0NNh%2blCqKCKMCoQ4FuMQLg2BeTvMbZxEmc%3d&risl=&pid=ImgRaw&r=0);"></div>
                                        <button class="user-detail--choose-img" type="button"><fmt:message bundle="${main}" key="accountChooseImg"></fmt:message></button>
                                        <span class="user-detail--img-sub"><fmt:message bundle="${main}" key="accountSizeImg"></fmt:message></span>
                                        <span class="user-detail--img-sub"><fmt:message bundle="${main}" key="accountTypeImg"></fmt:message>: .JPEG,.PNG</span>
                                    </div>
                                </div>
                            </div>
                            <div class="user-credit">
                                <div class="user-detail-header user-detail-header--credit">
                                    <h2 class="user-detail--title"><fmt:message bundle="${main}" key="accountNHTitle1"></fmt:message></h2>
                                    <button type="button" class="user-credit-button">+ <fmt:message bundle="${main}" key="accountNHAddCard"></fmt:message></button>
                                </div>
                                <div class="user-credit--content">
                                    <fmt:message bundle="${main}" key="accountNoCard"></fmt:message>
                                </div>
                                <div class="user-detail-header user-detail-header--credit" >
                                    <h2 class="user-detail--title"><fmt:message bundle="${main}" key="accountNHTitle2"></fmt:message></h2>
                                    <button type="button" class="user-credit-button">+ <fmt:message bundle="${main}" key="accountNHAddBank"></fmt:message></button>
                                </div>
                                <div class="user-credit--content">
                                    <fmt:message bundle="${main}" key="accountNoNH"></fmt:message>
                                </div>
                            </div>
                            <div class="user-address">
                                <div class="user-detail-header user-detail-header--credit">
                                    <h2 class="user-detail--title"><fmt:message bundle="${main}" key="accountAddressTitle"></fmt:message></h2>
                                    <button type="button" class="user-credit-button">+ <fmt:message bundle="${main}" key="accountAddressAddTitle"></fmt:message></button>
                                </div>
                                <div class="user-address--content">
                                    <div class="user-address-wrap">
                                        <div class="user-address--title">
                                            <fmt:message bundle="${main}" key="accountT1"></fmt:message>
                                        </div>
                                        <span class="user-address--value">${user.userName}</span>
                                    </div>
                                    <div class="user-address-wrap">
                                        <div class="user-address--title">
                                            <fmt:message bundle="${main}" key="accountT4"></fmt:message>
                                        </div>
                                        <span class="user-address--value">098888888</span>
                                    </div>
                                    <div class="user-address-wrap">
                                        <div class="user-address--title">
                                            <fmt:message bundle="${main}" key="accountAddressTitle"></fmt:message>
                                        </div>
                                        <span class="user-address--value">đường số 7 Linh Xuân Thủ Đức
                                            Phường Linh Xuân
                                            Thành Phố Thủ Đức
                                            TP. Hồ Chí Minh</span>
                                    </div>
                                </div>
                            </div>
                            <div class="user-change-password">
                                <div class="user-detail-header">
                                    <h2 class="user-detail--title"> <fmt:message bundle="${main}" key="accountPwTitle"></fmt:message></h2>
                                    <span class="user-detail--sub"> <fmt:message bundle="${main}" key="accountPwTitleSub"></fmt:message></span>
                                </div>
                                <form action="./changePw" method="get" class="user-change-pw--form">
                                    <div class="user-pw-form-wrap">
                                        <span class="user-pw-form--title"> <fmt:message bundle="${main}" key="accountPwN"></fmt:message></span>
                                        <input type="password" name="pw" class="user-pw-form--input" required>
                                    </div>
                                    <div class="user-pw-form-wrap">
                                        <span class="user-pw-form--title"> <fmt:message bundle="${main}" key="accountPwN2"></fmt:message></span>
                                        <input type="password" name="pw2" class="user-pw-form--input" required>
                                    </div>
                                    <div class="user-pw-form-wrap">
                                        <span class="user-pw-form--title"> <fmt:message bundle="${main}" key="accountCodePw"></fmt:message></span>
                                        <input type="password" name="mxn" class="user-pw-form--input-mxm" required>
                                        <button type="button" class="user-pw-form--btn-mxm"> <fmt:message bundle="${main}" key="accountSendCode"></fmt:message></button>
                                    </div>
                                    <button class="user-change-pw--submit-btn"> <fmt:message bundle="${main}" key="accountPwCf"></fmt:message></button>
                                </form>
                            </div>
                        </div>
                        <div class="user-list-bought-handle" >
                            <div class="user-list-bought--title-wrap">
                                <div class="user-list-bought--title ">
                                     <fmt:message bundle="${main}" key="accountPurchaseT1"></fmt:message>
                                </div>
                                <div class="user-list-bought--title user-list-bought--title__active">
                                   <fmt:message bundle="${main}" key="accountPurchaseT2"></fmt:message>
                                </div>
                                <div class="user-list-bought--title">
                                    <fmt:message bundle="${main}" key="accountPurchaseT3"></fmt:message>
                                </div>
                                <div class="user-list-bought--title">
                                  <fmt:message bundle="${main}" key="accountPurchaseT4"></fmt:message>
                                </div>
                                <div class="user-list-bought--title">
                                    <fmt:message bundle="${main}" key="accountPurchaseT5"></fmt:message>
                                </div>
                                <div class="user-list-bought--title">
                                    <fmt:message bundle="${main}" key="accountPurchaseT6"></fmt:message>
                                </div>
                            </div>
                            <div class="user-list-bought-container">
                                <div class="user-list-bought--null">
                                    <div class="user-list-bought--null_img " style="background-image: url(https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/assets/5fafbb923393b712b96488590b8f781f.png);"></div>
                                    <p class="user-list-bought--null_title">Chưa có đơn hàng</p>
                                </div>
                                <c:forEach var="item" items="${listBought}">
                                	<div class="user-list-bought-wrap">
                                    <div class="user-list-bought-item-wrap"> 
                                        <div class="user-list-bought-item__info-wrap-left"> 
                                            <div class="user-list-bought-item__img" style="background-image: url(${item.urlImg});"></div>
                                            <div class="user-list-bought-item__info-wrap">
                                                <span class="user-list-bought-item__info-title">
                                                       ${item.title}
                                                </span>
                                                <span class="user-list-bought-item__info-filter">
                                                        Size: ${item.size}, Color:  ${item.color}
                                                </span>
                                                <span class="user-list-bought-item__infor-count">
                                                        *  ${item.count}
                                                </span>
                                            </div>
                                        </div>
                                        <div class="user-list-bought-item__info-wrap-right">
                                            <span class="user-list-bought-item__info-price"> 
                                            <fmt:formatNumber type="number" groupingUsed="true">${item.price}</fmt:formatNumber>
                                             đ</span>
                                       </div>
                                    </div>
                                    
                                </div>
                                </c:forEach>
                            </div>
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
    <script src="assets/js/header.js"></script>
    <script src="assets/js/userDetail.js"></script>
    <script src="assets/js/main.js"></script>
    <c:if test="${handle.changePW=='t'}">
    	<script type="text/javascript">
    	   var userDetail=document.querySelector('.user-detail')
    	    var userCredit=document.querySelector('.user-credit')
    	    var userAddress=document.querySelector('.user-address')
    	    var userChPW=document.querySelector('.user-change-password')
    	    var userBoughtListHandle=document.querySelector('.user-list-bought-handle')
    	    userBoughtListHandle.style.display="none"
    	    userDetail.style.display="none"
    	    userCredit.style.display="none"
    	    userAddress.style.display="none"
    	    userChPW.style.display="block"
    	    alert('Thay đổi mật khẩu thành công.')
    	</script>
    </c:if>
    <jsp:setProperty property="changePW" name="handle" value="f"/>
</body>
</html>