<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">

    <link rel="stylesheet" href="{{asset('public/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/base.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/grid.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/responsive.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=vietnamese"
    rel="stylesheet">
    <link href="./assets/css/sp/sp.css" rel="stylesheet" />
    <link href="./assets/css/sp/spresponsive.css" rel="stylesheet" />
    <style>

        .cart-empty-page__content {
            background-color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 50px 0;
        }

        .cart-empty-page__content-image {
            margin: 0;
            width: 300px;
        }

        .cart-empty-page__content-image>img {
            display: block;
            width: 100%;
            height: auto;
        }

        .cart-empty-page__content-text {
            margin: 20px 0 20px;
            font-size: 16px;
            font-weight: 500;
        }

        .btn--l {
            height: 48px;
            padding: 0 20px;
            min-width: 80px;
            max-width: 250px;
        }

        /* cart */
        .deltai-Cart {
            padding: 10px;
        }

        .cart-page-product-header {
            -webkit-box-align: center;
            align-items: center;
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
            border-radius: 2px;
            overflow: hidden;
            border-radius: 3px;
            height: 52px;
            font-size: 14px;
            background: #fff;
            text-transform: capitalize;
            margin-bottom: 12px;
            color: #888;
            padding: 0 20px;
            display: -webkit-box;
            display: flex;
        }

        .cart-page-product-header__product {
            width: 46.27949%;
        }

        .cart-page-product-header__unit-price {
            width: 15.88022%;
            text-align: center;
        }

        .cart-page-product-header__quantity {
            width: 15.4265%;
            text-align: center;
        }

        .cart-page-product-header__total-price {
            width: 10.43557%;
            text-align: center;
        }

        .cart-page-product-header__action {
            width: 12.70417%;
            text-align: center;
        }

        .cart-page-shop-section {
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
            border-radius: .125rem;
            overflow: hidden;
            background: #fff;
            margin-bottom: .9375rem;
            overflow: visible;
        }

        .cart-page-shop-section__items {
            position: relative;
            padding-bottom: 1px;
        }

        .cart-page-shop-section__items>.cart-item:first-child {
            margin-top: 0;
        }

        .cart-page-shop-section__items>.cart-item:last-child {
            border-bottom: 0;
        }

        .cart-page-shop-section__items>.cart-item {
            border-bottom: 1px solid rgba(0, 0, 0, .09);
            padding-left: 20px;
            padding-right: 20px;
        }

        .cart-page-shop-section__items>.cart-item {
            border: none;
        }

        .cart-item__content {
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
        }

        .cart-item__cell-overview {
            box-sizing: border-box;
            display: -webkit-box;
            display: flex;
        }

        .cart-item:last-child {
            padding-bottom: 10px;
        }

        .cart-item:first-child {
            padding-top: 10px;
        }

        .cart-item__cell-overview .cart-item-overview__thumbnail {
            max-width: 80px;
        }

        .cart-item-overview__thumbnail {
            background-position: 50%;
            background-size: contain;
            background-repeat: no-repeat;
            width: 80px;
            height: 80px;
        }

        .cart-item__flex {
            -webkit-box-flex: 1;
            flex: 1 1 auto;
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            overflow: hidden;
        }

        .cart-item__flex .cart-item-overview__product-name-wrapper {
            padding: 0 10px;
        }

        .cart-item-overview__product-name-wrapper {
            -webkit-box-flex: 1;
            flex: 1 1 0;
        }

        .cart-item-overview__product-name-wrapper {
            display: -webkit-box;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
            padding: .3125rem 1.25rem 0 .625rem;
            font-size: 14px;
            line-height: 1rem;
            width: 502px;
        }

        .cart-item-overview__name {
            text-decoration: none;
            color: rgba(0, 0, 0, .8);
            line-height: 20px;
            max-height: 40px;
            text-overflow: ellipsis;
            overflow: hidden;
            word-break: break-word;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 2;
        }

        .cart-item-overview__price {
            display: flex;
            align-items: center;
            font-size: 14px;
        }

        .cart-item__flex .cart-item__cell-unit-price {
            text-align: right;
            width: 110px;
        }

        .cart-item__cell-quantity,
        .cart-item__cell-unit-price {
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
        }

        .cart-item__cell-unit-price,
        .cart-item__cell-variation {
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
        }

        .cart-item__unit-price:last-child {
            margin: 0;
        }

        .cart-item__flex .cart-item__cell-unit-price {
            text-align: right;
            width: 110px;
        }

        .cart-item__cell-quantity,
        .cart-item__cell-unit-price {
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
        }

        .cart-item__flex .cart-item__cell-quantity {
            width: 150px;
            margin: 0 14px;
        }

        .cart-item__cell-quantity {
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: 15.4265%;
        }

        .cart-item__cell-quantity,
        .cart-item__cell-unit-price {
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
        }

        .cart-item__flex .cart-item__cell-total-price {
            text-align: center;
        }

        .cart-item__flex .cart-item__cell-total-price {
            text-align: center;
            width: 110px;
        }

        .cart-item__cell-total-price {
            width: 10.43557%;
            text-align: right;
            color: #ee4d2d;
        }

        .cart-item__cell-actions {
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: 12.70417%;
            text-transform: capitalize;
            font-size: 14px;
        }

        .cart-item__action {
            cursor: pointer;
            background: none;
            border: none;
        }




        .cart-item__cell-actions {
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            width: 12.70417%;
            text-transform: capitalize;
        }

        ._19lAw4 {
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
        }

        ._1zT8xu:first-child {
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
        }

        .btn-quantity {
            box-shadow: none;
        }

        ._1zT8xu {
            outline: none;
            cursor: pointer;
            border: none;
            font-size: .875rem;
            font-weight: 300;
            line-height: 1;
            letter-spacing: 0;
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-transition: background-color .1s cubic-bezier(.4, 0, .6, 1);
            transition: background-color .1s cubic-bezier(.4, 0, .6, 1);
            border: 1px solid rgba(0, 0, 0, .09);
            border-radius: 2px;
            background: transparent;
            color: rgba(0, 0, 0, .8);
            width: 50px;
            height: 32px;
        }

        .bt {
            overflow: hidden;
            display: -webkit-box;
            text-overflow: ellipsis;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 1;
            flex-direction: column;
            font-size: 4px;
            box-sizing: border-box;
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .09);
            border-radius: 2px;
            border: 0;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            text-transform: capitalize;
            outline: 0;
            cursor: pointer;
            outline: none !important;
        }

        ._1zT8xu .tickid-svg-icon {
            font-size: 12px;
        }

        .tickid-svg-icon {
            display: inline-block;
            width: 10px;
            height: 10px;
            fill: currentColor;
            position: relative;
        }

        ._18Y8Ul {
            width: 50px;
            height: 32px;
            border-left: none;
            border-right: none;
            font-size: 1rem;
            font-weight: 400;
            box-sizing: border-box;
            text-align: center;
            cursor: text;
            border-radius: 0;
        }

        ._1zT8xu:last-child {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
        }

        .btn-quantity {
            box-shadow: none;
        }

        ._1zT8xu {
            outline: none;
            cursor: pointer;
            border: none;
            font-size: 14px;
            font-weight: 300;
            line-height: 1;
            letter-spacing: 0;
            display: -webkit-box;
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            -webkit-box-pack: center;
            justify-content: center;
            -webkit-transition: background-color .1s cubic-bezier(.4, 0, .6, 1);
            transition: background-color .1s cubic-bezier(.4, 0, .6, 1);
            border: 1px solid rgba(0, 0, 0, .09);
            border-radius: 2px;
            background: transparent;
            color: rgba(0, 0, 0, .8);
            width: 50px;
            height: 32px;
        }

        .checkout {
            height: 80px;
            padding: 10px;
            background-color: #fff;
            margin-bottom: 20px;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .cart-info {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            flex: 1;
            height: 100%;
            padding: 20px;
            font-size: 14px;
        }

        .cart-value {
            color: var(--primary-color);
        }

        .cart-title {
            margin-right: 12px;
        }
    </style>

</head>

<body ng-app="Homeapp">
    <header class="header">
        <div class="container-fluid">
            <div class="container">
                <nav class="header__navbar hide-on-mobile-tablet">
                    <ul class="header__navbar-list">
                        <li class="hearder__navbar-item header__navbar-item--has-qr hearder__navbar-item--separate">
                            V??o c???a h??ng tr??n ???ng d???ng MyOhui
                            <!-- Header-QR-Code -->
                            <div class="header__qr">
                                <img src="./assets/img/QR-Code.png" alt="QR_Code" class="header__qr-img">
                                <div class="header__qr-apps">
                                    <a href="" class="header__qr-link">
                                        <img src="./assets/img/Google Play.png" alt="Google Play"
                                        class="header__qr-dowload-img">
                                    </a>
                                    <a href="" class="header__qr-link"><img src="./assets/img/App Store.png"
                                        alt="App Store" class="header__qr-dowload-img"></a>
                                    </div>
                                </div>
                            </li>
                            <li class="hearder__navbar-item">
                                <span class="hearder__navbar-title--no-pointer">K???t n???i</span>
                                <a href="https://www.facebook.com/MyphamOhuiLGvina/" class="header__navbar-icon-link">
                                    <i class="header__navbar-icon fab fa-facebook"></i>

                                </a>
                                <a href="https://zalo.me/0965866851" class="header__navbar-icon-link">
                                    <button class="header__navbar-icon header__navbar-icon-zalo"></button>
                                </a>
                            </li>
                        </ul>
                        <ul ng-controller="LoginController" class="header__navbar-list">
                            <li class="hearder__navbar-item hearder__navbar-item--has-notify">
                                <a href="" class="header__navbar-item-link">
                                    <i class="header__navbar-icon far fa-bell"></i> Th??ng b??o
                                </a>
                                <div class="header__notify">
                                    <header class="header__notify-header">
                                        <h3>Th??ng b??o m???i nh???n</h3>
                                    </header>
                                    <ul class="header__notify-list">
                                        <li class="header__notify-item header__notify-item--viewed">
                                            <a href="" class="header__notify-link">
                                                <img src="https://img.abaha.vn/photos/resized/200x120/83-1589289429-myphamohui-lgvina.png"
                                                alt="M??? ph???m Ohui" class="header__notify-img">
                                                <div class="header__notify-info">
                                                    <span class="header__notify-name">CH????NG TR??NH KHUY???N M??I CH??O TH??NG
                                                    5</span>
                                                    <span class="header__notify-descriotion">Khuy???n m??i ch??o h??</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <footer class="header__notify-footer">
                                        <a href="" class="header__notify-footer-btn">Xem t???t c???</a>
                                    </footer>
                                </div>
                            </li>
                            <li class="hearder__navbar-item">
                                <a href="" class="header__navbar-item-link">
                                    <i class="header__navbar-icon far fa-question-circle"></i> Tr??? gi??p
                                </a>
                            </li>
                            <div id="hearder__navbar-account">
                                <?php
                                $customer_id = Session::get('customer_id');
                                if($customer_id!=NULL){ 
                                 ?>
                                 <a style="text-decoration: none;" href="{{ URL::to('/logout-checkout') }}" >
                                    <li class="hearder__navbar-item hearder__navbar-item--strong">????ng xu???t</li>
                                </a>
                                <?php
                            }else{
                             ?>
                             <a style="text-decoration: none;" href="{{ URL::to('/login-checkout') }}" >
                                <li class="hearder__navbar-item hearder__navbar-item--strong">????ng nh???p</li>
                                </a>    <?php 
                            }
                            ?>
                        </div>
                        <li id="hearder__navbar-user" class="hearder__navbar-item hearder__navbar-user">
                            <!-- <img id="ViewAvatar" src="" alt="user-img" class="header__navbar-user-img">
                            <img id="ViewAvatar_none" src="https://1.bp.blogspot.com/-m3UYn4_PEms/Xnch6mOTHJI/AAAAAAAAZkE/GuepXW9p7MA6l81zSCnmNaFFhfQASQhowCLcBGAsYHQ/s1600/Cach-Lam-Avatar-Dang-Hot%2B%25281%2529.jpg" alt="user-img" class="header__navbar-user-img">
                            <span class="header__navbar-user-name"></span> -->
                            <ul class="hearder__navbar-user-menu">
                                <li class="hearder__navbar-user-item">
                                    <a href="/Account/HoSo">T??i kho???n c???a t??i </a>
                                </li>
                                <li class="hearder__navbar-user-item">
                                    <a href="/Account/DonMua">????n mua </a>
                                </li>
                                <li class="hearder__navbar-user-item hearder__navbar-user-item--separate">
                                    <a onclick="Logout()" href="">????ng xu???t </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- header-with-search -->

            <div class="container">
                <div class="header-with-search  ">
                    <!-- nav__mobile-cotegory -->
                    <div class="nav__mobile-cotegory ">
                        <label for="nav__mobile-cotegory-check" class="nav__mobile-cotegory-icon"
                        style="display: block;">
                        <svg class="nav__mobile-bar-icon" aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="bars" class="svg-inline--fa fa-bars fa-w-14" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" color="#fff">
                        <path fill="currentColor"
                        d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z ">
                    </path>
                </svg>
            </label>
            <input type="checkbox" id="nav__mobile-cotegory-check" style="display: none;">
            <label for="nav__mobile-cotegory-check" class="nav__overlay-category"></label>
            <div class="nav__mobile">
                <ul class="nav__list">
                    <li class="nav__item">
                        <a style="color: orangered;" href="./index.html" class="nav__link">T???t C??? S???n
                        Ph???m</a>
                    </li>
                    <input type="checkbox" hidden id="nav__category-input">
                    <li class="nav__item nav__item-first">
                        <label for="nav__category-input">
                            <svg class="nav__icon " aria-hidden="true " focusable="false "
                            data-prefix="fas " data-icon="chevron-right "
                            class="svg-inline--fa fa-chevron-right fa-w-10 " role="img " xmlns="http://www.w3.org/2000/svg
                            " viewBox="0 0 320 512 ">
                            <path fill="currentColor " d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373
                            24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z "></path>
                        </svg>
                    </label>
                    <a href=" " class="nav__link nav__link-first ">Ohui</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiTheFirstTaiSinh.html" class="category-item__link ">Ohui Thefirst T??i
                    Sinh </a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiD?????ngTr???ng.html" class="category-item__link ">Ohui D?????ng Tr???ng</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiPrimeAdvancer.html" class="category-item__link ">Ohui Prime
                    Advancer</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiD?????ng???m.html" class="category-item__link ">Ohui D?????ng ???m</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiCh???ngL??oH??a.html" class="category-item__link ">Ohui Ch???ng L??o H??a</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiMakeUp.html" class="category-item__link ">Ohui Make Up</a>
                </li>
                <li class="nav__item nav__item-1 ">
                    <a href="./OhuiCh???ngN???ng.html" class="category-item__link ">Ohui Ch???ng N???ng</a>
                </li>
                <li class="nav__item ">
                    <a href=" " class="nav__link ">Th???c ph???m ch???c n??ng</a>
                </li>
                <li class="nav__item ">
                    <a href=" " class="nav__link ">D???ch v???</a>
                </li>
                <li class="nav__item ">
                    <a href=" " class="nav__link ">Tin t???c</a>
                </li>
                <li class="nav__item ">
                    <a href=" " class="nav__link ">Li??n h???</a>
                </li>
            </ul>
        </div>
    </div>
    <label for="mobile-search-checkbox " class="header__mobile-search ">
        <i class="header__mobile-search-icon fas fa-search "></i>
    </label>
    <div class="header__logo ">
        <a href="{{URL::to('/')}}" class="header__logo-link header__logo-link "
        style="-webkit-tap-highlight-color: transparent; ">
        <img class="header__logo-img"
        src="https://img.abaha.vn/photos/resized/320x/83-1574737287-myphamohui-lgvina.png"
        alt="Logo_img">
    </a>
</div>
<input type="checkbox" hidden id="mobile-search-checkbox " class="header__search-checkbox ">
<div ng-controller="SearchController" class="header__search">
    <div class="header__search-input-wrap">
        <input id="name" type="text" class="header__search-input"
        placeholder="T??m ki???m s???n ph???m... " ng-model="name">
        <!-- Search history -->
                            <!-- <div class="header__search-history ">
                                <h3 class="header__search-history-heading ">G???i ?? t??m ki???m:</h3>
                                <ul class="header__search-history-list ">
                                    <li class="header__search-history-item ">
                                        <a href=" "><i>Kem d?????ng da</i> </a>
                                    </li>
                                    <li class="header__search-history-item ">
                                        <a href=" "><i>Kem tr??? m???n</i> </a>
                                    </li>
                                </ul>
                            </div> -->
                        </div>
                        <div class="header__search-select ">
                            <span class="header__search-select-label ">Trong shop</span>
                            <i class="header__search-select-icon fas fa-angle-down "></i>
                            <ul class="header__search-option ">
                                <li class="header__search-option-item header__search-option-item--active ">
                                    <span>Trong Shop</span>
                                    <i class="fas fa-check "></i>
                                </li>
                            </ul>
                        </div>
                        <a href="" class="header__search-btn " id="search-btn">
                            <i style="font-size: 1.8rem;
                            color: #fff;" class="fas fa-search"></i>
                        </a>
                    </div>
                    <!-- Cart layout -->
                    <div ng-controller="StoreController" class="header__cart ">


                    </div>
                </div>
                <div class="header__user ">
                    <label for="nav-mobile-input" class="header__user-link ">
                        <img src="https://1.bp.blogspot.com/-m3UYn4_PEms/Xnch6mOTHJI/AAAAAAAAZkE/GuepXW9p7MA6l81zSCnmNaFFhfQASQhowCLcBGAsYHQ/s1600/Cach-Lam-Avatar-Dang-Hot%2B%25281%2529.jpg "
                        alt=" " class="header__user-img ">
                    </label>
                    <input type="checkbox" hidden id="nav-mobile-input">
                    <label for="nav-mobile-input" class="nav__overlay "></label>
                    <nav class="nav__mobile-user ">
                        <div class="nav__mobile-user-img ">
                            <img src="https://1.bp.blogspot.com/-m3UYn4_PEms/Xnch6mOTHJI/AAAAAAAAZkE/GuepXW9p7MA6l81zSCnmNaFFhfQASQhowCLcBGAsYHQ/s1600/Cach-Lam-Avatar-Dang-Hot%2B%25281%2529.jpg "
                            alt=" " class="header__user-img1 ">
                        </div>
                        <div class="nav__mobile-user-list ">
                            <div class="nav__mobile-user-item ">
                                <a href="/Account/Registar" class="nav__mobile-user-link ">????ng k??</a>
                            </div>
                            <div class="nav__mobile-user-item nav__mobile-user-item--active ">
                                <a href="/Account/Login" class="nav__mobile-user-link ">????ng nh???pp</a>
                            </div>
                        </div>
                        <div class="nav__mobile-user-list-news ">
                            <div class="nav__mobile-news-item ">
                                <a href=" " class="nav__mobile-news-link ">Tin t???c</a>
                            </div>
                            <div class="nav__mobile-news-item ">
                                <a href="" class="nav__mobile-news-link ">Gi??? h??ng</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>

</header>
<div >
    <div id="no-cart-detail" style="display: none" class="container no-cart">
        <div class="cart-empty-page__content">
            <div class="cart-empty-page__content-image">
                <img src="./assets/img/no-cart.png" alt="">
            </div>
            <p class="cart-empty-page__content-text">Gi??? h??ng c???a b???n c??n tr???ng.</p>
            <a href="" class="btn btn--primary btn--l">Mua ngay</a>
        </div>
    </div>


    <div class="table-responsive cart_info">
        <?php
        $content = Cart::content();
        ?>
        <div class="container">
            <table class="table table-condensed">
                <thead>
                    <tr class="cart_menu" style="font-size: 20px;">
                        <td class="stt">STT</td>             
                        <td class="image">H??nh ???nh</td>
                        <td class="description">T??n sp</td>
                        <td class="price">Gi??</td>
                        <td class="quantity">S??? l?????ng</td>
                        <td class="total">T???ng</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                   @php
                   $stt=1;
                   $total=0;

                   @endphp
                   @foreach($content as $v_content)
                   <tr style="font-size: 18px;">
                    <td style="padding-top: 30px;padding-left: 20px;">{{ $stt++ }}</td>
                    <td class="cart_product">
                        <a href=""><img style="height: 80px;width: 80px" src="{{URL::to('public/uploads/product/'.$v_content->options->image)}}" width="90" alt="" /></a>
                    </td>

                    <td class="cart_description">
                        <h4><a style="color: black;" >{{$v_content->name}}</a></h4>

                    </td>
                    <td class="cart_price">
                        <p>{{number_format($v_content->price).' '.'vn??'}}</p>
                    </td>
                    <td class="cart_quantity">
                        <div class="cart_quantity_button">
                          <form action="{{URL::to('/update-cart-quantity')}}" method="POST">
                            {{ csrf_field() }}
                            <!--       value="{{$v_content->qty}}" -->
                            <input style="width: 100px;" class="cart_quantity_input " type="number" name="cart_quantity"  value="{{ $v_content->qty }}"  >
                            <input type="hidden" value="{{$v_content->rowId}}" name="rowId_cart" class="form-control">
                            <input type="submit" value="C???p nh???t" name="update_qty" class="btn btn-default btn-sm"> 
                        </form> 
                    </div>
                </td>
                <td class="cart_total">
                    <p class="cart_total_price">
                        <?php
                        $subtotal = $v_content->price * $v_content->qty;
                        echo number_format($subtotal).' '.'vn??';
                        ?>
                    </p>
                </td>
                <td class="cart_delete">
                    <a class="cart_quantity_delete" href="{{URL::to('/delete-to-cart/'.$v_content->rowId)}}"><i style="color: red" class="fa fa-trash"></i></a>
                </td>
            </tr>

                        <?php 
                        $total += $subtotal;                     
                      
                        ?>
            @endforeach         
        </tbody>
    </table>
    <div class="container">                
        <div class="row">
            <div class="col-sm-6" style="font-size: 18px;font-family: sans-serif;margin-left: 500px;border:1px solid gray;height: 280px; ">
                <div class="total_area" style="margin-top: 20px;">
                    <ul>
                    

                     <li style="background-color: #e3e3e3;height: 40px;line-height: 40px;padding-left: 20px">T???ng ti???n <span style="margin-left: 270px">{{Cart::priceTotal().' '.'vn??'}}</span></li>
                     <p></p>

                     <p></p>
                     <li style="background-color: #e3e3e3;height: 40px;line-height: 40px;padding-left: 20px">Ph?? v???n chuy???n <span style="margin-left: 320px">Free</span></li>
                     <p></p>
                     <li style="background-color: #e3e3e3;height: 40px;line-height: 40px;padding-left: 20px">Th??nh ti???n <span style="margin-left: 250px">{{Cart::priceTotal().' '.'vn??'}}</span></li>
                 </ul>
                 <!--  {{--    <a class="btn btn-danger update" href="">Update</a> --}} -->
                 <?php
                 $customer_id = Session::get('customer_id');
                 if($customer_id!=NULL){ 
                   ?>

                   <a style="margin-left: 380px;color: white" class="btn btn-danger check_out" style="" href="{{URL::to('/checkout')}}">Thanh to??n</a>
                   <?php
               }else{
                   ?>

                   <a style="margin-left: 380px;color: white" class="btn btn-danger check_out" href="{{URL::to('/login-checkout')}}">Thanh to??n</a>
                   <?php 
               }
               ?>
           </div>
       </div>
   </div>
</div>            
</div>
</div>
</div>






<footer class="footer " style="margin-top: 30px">
    <div class="grid wide footer__contain ">
        <div class="row ">
            <div class="col l-2-4 m-4 c-6 ">
                <h3 class="footer__heading ">Ch???m s??c kh??ch h??ng</h3>
                <ul class="footer-list ">
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>Trung t??m tr??? gi??p</span></a>
                    </li>
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>H?????ng d???n mua h??ng</span></a>
                    </li>
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>Ch??nh s??ch v???n chuy???n</span></a>
                    </li>
                </ul>
            </div>
            <div class="col l-2-4 m-4 c-6 ">
                <h3 class="footer__heading ">V??? ch??ng t??i</h3>
                <ul class="footer-list ">
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>Gi???i thi???u v??? Shop</span></a>
                    </li>
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>??i???u kho???n v??? Shop</span></a>
                    </li>
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link "><span>Ch??nh s??ch b???o m???t</span></a>
                    </li>
                </ul>
            </div>
            <div class="col l-2-4 m-4 c-6 footer__contain ">
                <h3 class="footer__heading ">Thanh to??n</h3>
                <ul class="footer__contain-pay ">
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-visa-png " style="width: 55px; height: 29px; ">
                        </div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-mastercard-png "
                        style="width: 55px; height: 29px; "></div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-jcb-png " style="width: 55px; height: 23px; ">
                        </div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-amex-png "
                        style="width: 55px; height: 24px; margin-left: 0 14px; "></div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-vn_cod_footer-png "
                        style="width: 50px; height: 29px; "></div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-vn_installment_footer-png "
                        style="width: 55px; height: 29px; "></div>
                    </li>
                    <li class="footer__contain-pay-img ">
                        <div class="footer-vn-background footer-vn-air-pay-png "
                        style="width: 23px; height: 29px; margin-left: 16px; "></div>
                    </li>
                </ul>
            </div>
            <div class="col l-2-4 m-4 c-6 ">
                <h3 class="footer__heading ">Theo d??i ch??ng t??i tr??n</h3>
                <ul class="footer-list ">
                    <li class="footer-item ">
                        <a href="https://www.facebook.com/MyphamOhuiLGvina/ " class="footer-item__link ">
                            <i class="footer-item__icon fab fa-facebook "></i>
                            <span>Facebook</span>
                        </a>
                    </li>
                    <li>
                        <a href=" " class="footer-item__link ">
                            <i class="footer-item__icon fab fa-instagram "></i>
                            <span>Instagram</span>
                        </a>
                    </li>
                    <li class="footer-item ">
                        <a href=" " class="footer-item__link ">
                            <i class="footer-item__icon fab fa-linkedin "></i>
                            <span>LinkedIn</span>
                        </a>
                    </li>
                </ul>
            </div>
            
        </div>

    </div>
</footer>

</body>

</html>