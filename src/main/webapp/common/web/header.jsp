<%@page import="com.laptrinhjavaweb.utils.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
        <!--Notification Section-->
        <div class="notification-section notification-img-2 notification-padding-1">
			<div class="container">
				<div class="notification-wrapper">
					<div class="notification-content ml-285">
						<p>Get free shipping and a worry - Free 30 day money back guarantee when you !  <a href="#">Shop Online</a> </p>
					</div>
                    <div class="notification-close notification-icon">
                        <button><i class="ion-close"></i></button>
                    </div>
				</div>
			</div>
        </div>
        <!-- header start -->
        <header class="header-area">
            <div class="header-top header-top-color-2 pt-10 pb-13 border-bottom-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="header-top-left">
                                <div class="language-currency">
                                    <span>Language:</span>
                                    <div class="lang-curr-dropdown">
                                        <ul>
                                            <li><a class="language-click" href="#">English <i class="ion-chevron-down"></i></a>
                                                <ul class="language-dropdown">
                                                    <li><a href="#">English </a></li>
                                                    <li><a href="#">Bangla </a></li>
                                                    <li><a href="#">Hindi </a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="language-currency lang-curr-mrg">
                                    <span>Currency: </span>
                                    <div class="lang-curr-dropdown">
                                        <ul>
                                            <li><a class="language-click" href="#">USD <i class="ion-chevron-down"></i></a>
                                                <ul class="language-dropdown">
                                                    <li><a href="#">USD </a></li>
                                                    <li><a href="#">US </a></li>
                                                    <li><a href="#">EURO </a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="header-top-right">
                                <ul>
                              		<security:authorize access="isAnonymous()">
                                    <li>
                                        <a href="<c:url value='login'/>">Đăng nhập  </a>
                                    </li>                                                                                               		
                              		</security:authorize>
                              		<security:authorize access="isAuthenticated()">
                                    <li>
                                        <a href="my-account.html">Wellcome <%=SecurityUtils.getPrincipal().getFullName() %></a>
                                    </li>   
                                      <li>
                                        <a href="wishlist.html">Wishlist  </a>
                                    </li>
                                    <li>
                                        <a href="checkout.html"> Checkout</a>
                                    </li>                                   
                                     <li>
                                        <a href="<c:url value='/thoat'/>">Thoát  </a>
                                    </li>                              		
                              		</security:authorize>


                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-middle header-middle-color-2 ptb-40">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="logo logo-mrg">
                                <a href="index.html">
                                    <img src="assets/img/logo/logo-2.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="header-contact-search-wrapper f-right">
                                <div class="header-contact middle-same">
                                    <div class="header-contact-icon">
                                        <i class="pe-7s-headphones"></i>
                                    </div>
                                    <div class="header-contact-content">
                                        <p>Call us <br>Free Support: (012) 800 456 789</p>
                                    </div>
                                </div>
                                <div class="header-search middle-same search-color-elec">
                                    <form class="header-search-form" action="#">
                                        <input type="text" placeholder="Search entire store here ...">
                                        <button>
                                            <i class="ion-ios-search-strong"></i>
                                        </button>
                                    </form>
                                </div>
                                <div class="header-cart middle-same">
                                    <button class="icon-cart">
                                        <i class="pe-7s-shopbag cart-bag"></i>
                                        <span class="count-amount">$609.00</span>
                                        <i class="ion-chevron-down cart-down"></i>
                                        <span class="count-style">02</span>
                                    </button>
                                    <div class="shopping-cart-content">
                                        <ul>
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="#">Phantom Remote <br>Control 2018 </a></h4>
                                                    <h6>Qty: 02</h6>
                                                    <span>$260.00</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="ion-android-close"></i></a>
                                                </div>
                                            </li>
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="#">Phantom Remote <br>Control 2018 </a></h4>
                                                    <h6>Qty: 02</h6>
                                                    <span>$260.00</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="ion-android-close"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="shopping-cart-total">
                                            <h4>Shipping : <span>$20.00</span></h4>
                                            <h4>Total : <span class="shop-total">$260.00</span></h4>
                                        </div>
                                        <div class="shopping-cart-btn">
                                            <a class="btn-style btn-hover" href="cart-page.html">view cart</a>
                                            <a class="btn-style btn-hover" href="checkout.html">checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom theme-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="logo mobile-logo">
                                <a href="index.html">
                                    <img alt="" src="assets/img/logo/logo.png">
                                </a>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile-menu-area">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="index.html">HOME</a>
                                                <ul>
                                                    <li><a href="#">Demo Group 01</a>
                                                        <ul>
                                                            <li><a href="index.html">Home - electronics</a></li>
                                                            <li><a href="index-electronics-2.html">Home - electronics 2</a></li>
                                                            <li><a href="index-electronics-3.html">Home - electronics 3</a></li>
                                                            <li><a href="index-electronics-4.html">Home - electronics 4</a></li>
                                                            <li><a href="index-book.html">Home - book </a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Demo Group 02</a>
                                                        <ul>
                                                            <li><a href="index-book-2.html">Home - book 2</a></li>
                                                            <li><a href="index-coffee.html">Home - coffee</a></li>
                                                            <li><a href="index-cycle.html">Home - cycle</a></li>
                                                            <li><a href="index-fashion.html">Home - fashion</a></li>
                                                            <li><a href="index-game.html">Home - game</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Demo Group 03</a>
                                                        <ul>
                                                            <li><a href="index-jewelry.html">Home - jewelry</a></li>
                                                            <li><a href="index-medical.html">Home - medical</a></li>
                                                            <li><a href="index-sports.html">Home - sports</a></li>
                                                            <li><a href="index-sunglass.html">Home - sunglass</a></li>
                                                            <li><a href="index-watch.html">Home - watch</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Demo Group 04</a>
                                                        <ul>
                                                            <li><a href="index-construction.html">Home - construction</a></li>
                                                            <li><a href="index-auto-parts.html">Home - Auto Parts<span>New</span></a></li>
                                                            <li><a href="index-furniture.html">Home - Furniture<span>New</span></a></li>
                                                            <li><a href="index-petmarket.html">Home - PetMarket<span>New</span></a></li>
                                                            <li><a href="index-organic.html">Home - Organic<span>New</span></a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Demo Group 05</a>
                                                        <ul>
                                                            <li><a href="index-shoe.html">Home - Shoe<span>New</span></a></li>
                                                            <li><a href="index-toy.html">Home - Toy<span>New</span></a></li>
                                                            <li><a href="index-cosmetic.html">Home - Cosmetic<span>New</span></a></li>
                                                            <li><a href="index-housewares.html">Home - Housewares<span>New</span></a></li>
                                                            <li><a href="index-underwear.html">Home - Underwear<span>New</span></a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="shop.html"> shop </a>
                                                <ul>
                                                    <li><a href="#">Shop Layout</a>
                                                        <ul>
                                                            <li><a href="shop.html">default shop</a></li>
                                                            <li><a href="shop-2col.html">2 column box</a></li>
                                                            <li><a href="shop-3col.html">3 column box</a></li>
                                                            <li><a href="shop.html">4 column box</a></li>
                                                            <li><a href="shop-list.html">shop list</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Shop Layout</a>
                                                        <ul>
                                                            <li><a href="shop-new.html">shop new</a></li>
                                                            <li><a href="shop-onsale.html">shop onsale</a></li>
                                                            <li><a href="shop-no-sidebar.html">shop no sidebar</a></li>
                                                            <li><a href="shop-rightsidebar.html">shop right sidebar</a></li>
                                                            <li><a href="shop-fullwide.html">shop fullwide</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Product Details Layout</a>
                                                        <ul>
                                                            <li><a href="product-details.html">tab style 1</a></li>
                                                            <li><a href="product-details-2.html">tab style 2</a></li>
                                                            <li><a href="product-details-3.html">tab style 3</a></li>
                                                            <li><a href="product-details-gallery.html">gallery left</a></li>
                                                            <li><a href="product-details-gallery-2.html">gallery right</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Product Details Layout</a>
                                                        <ul>
                                                            <li><a href="product-details-sticky.html">sticky left</a></li>
                                                            <li><a href="product-details-sticky-right.html">sticky right</a></li>
                                                            <li><a href="product-details-slider.html">slider box</a></li>
                                                            <li><a href="product-details-slider-fullwide.html">slider full wide</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Account Pages</a>
                                                        <ul>
                                                            <li><a href="cart-page.html">cart page</a></li>
                                                            <li><a href="checkout.html">checkout</a></li>
                                                            <li><a href="wishlist.html">wishlist</a></li>
                                                            <li><a href="my-account.html">my account</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="login-register.html">login / register</a></li>
                                                    <li><a href="contact.html">contact us</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">BLOG</a>
                                                <ul>
                                                    <li><a href="blog.html">blog page</a></li>
                                                    <li><a href="blog-leftsidebar.html">blog sidebar</a></li>
                                                    <li><a href="blog-details.html">blog details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html"> Contact us </a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-menu main-none elec-menu">
                        <nav>
                            <ul>
                                <li class="mega-menu-position"><a href="index.html">Home <i class="ion-chevron-down"></i> </a>
                                    <ul class="mega-menu">
                                        <li>
                                            <ul>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Demo Group 01</li>
                                                        <li><a href="index.html">Home - electronics</a></li>
                                                        <li><a href="index-electronics-2.html">Home - electronics 2</a></li>
                                                        <li><a href="index-electronics-3.html">Home - electronics 3</a></li>
                                                        <li><a href="index-electronics-4.html">Home - electronics 4</a></li>
                                                        <li><a href="index-book.html">Home - book </a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Demo Group 02</li>
                                                        <li><a href="index-book-2.html">Home - book 2</a></li>
                                                        <li><a href="index-coffee.html">Home - coffee</a></li>
                                                        <li><a href="index-cycle.html">Home - cycle</a></li>
                                                        <li><a href="index-fashion.html">Home - fashion</a></li>
                                                        <li><a href="index-game.html">Home - game</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Demo Group 03</li>
                                                        <li><a href="index-jewelry.html">Home - jewelry</a></li>
                                                        <li><a href="index-medical.html">Home - medical</a></li>
                                                        <li><a href="index-sports.html">Home - sports</a></li>
                                                        <li><a href="index-sunglass.html">Home - sunglass</a></li>
                                                        <li><a href="index-watch.html">Home - watch</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Demo Group 04</li>
                                                        <li><a href="index-construction.html">Home - construction</a></li>
                                                        <li><a href="index-auto-parts.html">Home - Auto Parts<span class="blue">New</span></a></li>
                                                        <li><a href="index-furniture.html">Home - Furniture<span class="blue">New</span></a></li>
                                                        <li><a href="index-petmarket.html">Home - PetMarket<span class="blue">New</span></a></li>
                                                        <li><a href="index-organic.html">Home - Organic<span class="blue">New</span></a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Demo Group 05</li>
                                                        <li><a href="index-shoe.html">Home - Shoe<span class="blue">New</span></a></li>
                                                        <li><a href="index-toy.html">Home - Toy<span class="blue">New</span></a></li>
                                                        <li><a href="index-cosmetic.html">Home - Cosmetic<span class="blue">New</span></a></li>
                                                        <li><a href="index-housewares.html">Home - Housewares<span class="blue">New</span></a></li>
                                                        <li><a href="index-underwear.html">Home - Underwear<span class="blue">New</span></a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="mega-menu-position"><a href="shop.html"> Shop <i class="ion-chevron-down"></i> </a>
                                    <ul class="mega-menu">
                                        <li>
                                            <ul>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Shop Layout</li>
                                                        <li><a href="shop.html">default shop</a></li>
                                                        <li><a href="shop-2col.html">2 column box</a></li>
                                                        <li><a href="shop-3col.html">3 column box</a></li>
                                                        <li><a href="shop.html">4 column box</a></li>
                                                        <li><a href="shop-list.html">shop list</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Shop Layout</li>
                                                        <li><a href="shop-new.html">shop new</a></li>
                                                        <li><a href="shop-onsale.html">shop onsale</a></li>
                                                        <li><a href="shop-no-sidebar.html">shop no sidebar</a></li>
                                                        <li><a href="shop-rightsidebar.html">shop right sidebar</a></li>
                                                        <li><a href="shop-fullwide.html">shop fullwide</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Product Details Layout</li>
                                                        <li><a href="product-details.html">tab style 1</a></li>
                                                        <li><a href="product-details-2.html">tab style 2</a></li>
                                                        <li><a href="product-details-3.html">tab style 3</a></li>
                                                        <li><a href="product-details-gallery.html">gallery left</a></li>
                                                        <li><a href="product-details-gallery-2.html">gallery right</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Product Details Layout</li>
                                                        <li><a href="product-details-sticky.html">sticky left</a></li>
                                                        <li><a href="product-details-sticky-right.html">sticky right</a></li>
                                                        <li><a href="product-details-slider.html">slider box</a></li>
                                                        <li><a href="product-details-slider-fullwide.html">slider full wide</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Account Pages</li>
                                                        <li><a href="cart-page.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="my-account.html">my account</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">pages <i class="ion-chevron-down"></i> </a>
                                    <ul class="submenu">
                                        <li><a href="about-us.html">about us</a></li>
                                        <li><a href="login-register.html">login / register</a></li>
                                        <li><a href="contact.html">contact us</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog-leftsidebar.html">blog <i class="ion-chevron-down"></i> </a>
                                    <ul class="submenu">
                                        <li><a href="blog.html">blog page</a></li>
                                        <li><a href="blog-leftsidebar.html">blog sidebar</a></li>
                                        <li><a href="blog-details.html">blog details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Smartwatch </a></li>
                                <li><a href="shop.html"> phones </a></li>
                                <li><a href="contact.html">contacts  </a></li>
                                <li><a href="#">Buy Theme </a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>