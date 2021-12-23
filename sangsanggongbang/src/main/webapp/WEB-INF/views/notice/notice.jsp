<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>공지사항</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Spaces - Blog">
<meta name="author" content="Themesberg">
<meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
<link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="og:title" content="Spaces - Blog">
<meta property="og:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="og:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
<meta property="twitter:title" content="Spaces - Blog">
<meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
<meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/resources/assets/img/favicon/apple-touch-icon.png'/>">
<link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/resources/assets/img/favicon/favicon-32x32.png'/>">
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/resources/assets/img/favicon/favicon-16x16.png'/>">
<link rel="manifest" href="<c:url value='/resources/assets/img/favicon/site.webmanifest'/>">
<link rel="mask-icon" href="<c:url value='/resources/assets/img/favicon/safari-pinned-tab.svg'/>" color="#ffffff'/>">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="<c:url value='/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css'/>" rel="stylesheet">

<!-- Leaflet JS -->
<link type="text/css" href="<c:url value='/resources/vendor/leaflet/dist/leaflet.css'/>" rel="stylesheet">

<!-- Fancybox -->
<link rel="stylesheet" href="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css'/>">

<!-- VectorMap -->
<link rel="stylesheet" href="<c:url value='/resources/vendor/jqvmap/dist/jqvmap.min.css'/>">

<!-- Main CSS -->
<link type="text/css" href="<c:url value='/resources/css/spaces.css'/>" rel="stylesheet">

<!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>
    <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-theme-primary navbar-expand-lg headroom py-lg-3 px-lg-6 navbar-dark navbar-transparent navbar-theme-primary">
        <div class="container">
            <a class="navbar-brand @@logo_classes" href="<c:url value='/resources/index.html'/>">
                <img class="navbar-brand-dark common" src="<c:url value='/resources/assets/img/brand/light.svg'/>" height="35" alt="Logo light">
                <img class="navbar-brand-light common" src="<c:url value='/resources/assets/img/brand/dark.svg'/>" height="35" alt="Logo dark">
            </a>
            <div class="navbar-collapse collapse" id="navbar_global">
                <div class="navbar-collapse-header">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="<c:url value='/resources/index.html'/>">
                                <img src="<c:url value='/resources/assets/img/brand/dark.svg'/>" height="35" alt="Logo Impact">
                            </a>
                        </div>
                        <div class="col-6 collapse-close">
                            <a href="#navbar_global" role="button" class="fas fa-times" data-toggle="collapse"
                                data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false"
                                aria-label="Toggle navigation"></a>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav navbar-nav-hover justify-content-center">
                    <li class="nav-item dropdown">
                        <a href="#" id="mainPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Front pages</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu p-3 p-lg-4" aria-labelledby="mainPagesDropdown">
                            <div class="row">
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">Main pages</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="<c:url value='/resources/html/index.html'/>">Landing</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="<c:url value='/resources/html/index-2.html'/>">Landing 2</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/index-3.html">Landing 3</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/about.html">About</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/pricing.html">Pricing</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/team.html">Team</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/contact.html">Contact</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block text-primary">Legal</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/legal.html">Legal center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/terms.html">Terms & agreement</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">Listing</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/all-spaces.html">All spaces</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/all-spaces-map.html">Map view</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/all-spaces-sidebar.html">All spaces sidebar</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/single-space.html">Space details</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/profile.html">Profile</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Support</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/support.html">Support center</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/support-topic.html">Support topic</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Blog</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blog.html">Blog</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blog-post.html">Blog post</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6 col-lg-4">
                                    <h6 class="d-block mb-3 text-primary">User</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/sign-in.html">Sign in</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/sign-up.html">Sign up</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/forgot-password.html">Forgot password</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/reset-password.html">Reset password</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Special</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/404.html">404 Not Found</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/500.html">500 Server Error</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/maintenance.html">Maintenance</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/coming-soon.html">Coming soon</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/blank.html">Blank page</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" id="dashboardPagesDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Dashboard</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-megamenu-sm p-3 p-lg-4" aria-labelledby="dashboardPagesDropdown">
                            <div class="row">
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">User dashboard</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/account.html">My account</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/settings.html">Settings</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/security.html">Security</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Items</h6>
                                    <ul class="list-style-none">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/my-items.html">My items</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/edit-item.html">Edit item</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-6">
                                    <h6 class="d-block mb-3 text-primary">Messaging</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/messages.html">Messages</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/single-message.html">Chat</a>
                                        </li>
                                    </ul>
                                    <h6 class="d-block mb-3 text-primary">Billing</h6>
                                    <ul class="list-style-none mb-4">
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/billing.html">Billing details</a>
                                        </li>
                                        <li class="mb-2 megamenu-item">
                                            <a class="megamenu-link" href="../html/dashboard/invoice.html">Invoice</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" id="supportDropdown" class="nav-link dropdown-toggle" aria-expanded="false" data-toggle="dropdown">
                            <span class="nav-link-inner-text mr-1">Support</span>
                            <i class="fas fa-angle-down nav-link-arrow"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg" aria-labelledby="supportDropdown">
                            <div class="col-auto px-0">
                                <div class="list-group list-group-flush">
                                    <a href="https://themesberg.com/docs/spaces/getting-started/quick-start/" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-secondary"><i class="fas fa-file-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Documentation<span class="badge badge-sm badge-secondary ml-2">v3.0</span></span>
                                            <span class="small">Examples and guides</span>
                                        </div>
                                    </a>
                                    <a href="https://themesberg.com/contact" target="_blank"
                                        class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                        <span class="icon icon-md icon-primary"><i
                                                class="fas fa-microphone-alt"></i></span>
                                        <div class="ml-4">
                                            <span class="text-dark d-block">Support</span>
                                            <span class="small">Looking for answers?</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="d-none d-lg-block @@cta_button_classes">
                <a href="https://themesberg.com/docs/spaces/components/buttons/" target="_blank" class="btn btn-md btn-outline-white animate-up-2 mr-3"><i class="fas fa-book mr-1"></i> <span class="d-xl-none">Docs</span> <span class="d-none d-xl-inline">Components</span></a>
                <a href="https://themes.getbootstrap.com/product/spaces/" target="_blank" class="btn btn-md btn-secondary animate-up-2"><i class="fas fa-shopping-bag mr-2"></i> Buy now</a>
            </div>
            <div class="d-flex d-lg-none align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global"
                    aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>
    </nav>
</header>
    <main>

        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <div class="position-relative">
        <img src="<c:url value='/resources/assets/img/brand/light-without-letter.svg'/>" alt="Logo loader">
        <img src="<c:url value='/resources/assets/img/brand/letter.svg'/>" class="rotate-letter" alt="Letter loader">
    </div>
</div>

        <!-- Hero -->
        <section class="section-header bg-primary text-white pb-7 pb-lg-11">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 text-center">
                        <h1 class="display-2 mb-4">공지사항</h1>
                    </div>
                </div>
            </div>
        </section>
        <section class="section section-lg line-bottom-light">
            <div class="container mt-n8 mt-md-n9 mt-lg-n12 z-2">
                <div class="row">
                    <div class="col-lg-12 mb-5">
                        <div class="card bg-white border-light flex-lg-row align-items-center no-gutters p-4">
                            <a href="./blog-post.html" class="col-12 col-lg-6"><img src="<c:url value='/resources/assets/img/blog/image-1.jpg" alt="themesberg office'/>" class="card-img-top rounded"></a>
                            <div class="card-body d-flex flex-column justify-content-between col-auto py-4 p-lg-3 p-xl-5">
                                <a href="./blog-post.html">
                                    <h2>Designing a dashboard for business</h2>
                                </a>
                                <p>Today we are overwhelmed by content, and inspiration can strike anywhere. The point is to collect it and share it in a structured way to inspire your team ...</p>
                                <div class="d-flex align-items-center mt-3">
                                    <img class="avatar avatar-sm rounded-circle" src="<c:url value='/resources/assets/img/team/profile-picture-1.jpg'/>" alt="Richard avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">Richard Thomas</h3>
                                    <span class="h6 text-muted small font-weight-normal mb-0 ml-auto">
                                        <time datetime="2019-04-25">21 February, 2019</time>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="<c:url value='/resources/assets/img/blog/image-2.jpg'/>" class="card-img-top rounded" alt="our desk">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">Google launches Cloud AI Platform Pipelines</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="<c:url value='/resources/assets/img/team/profile-picture-2.jpg'/>" alt="Neil avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">Neil Sims Curran</h3>
                                </div>
                                <p class="mb-0">Richard Thomas was born in 1990, and at only 29 years old, his trajectory is good. When he ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="<c:url value='/resources/assets/img/blog/image-3.jpg'/>" class="card-img-top rounded" alt="web desk">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">Apple Details Reveal Remarkable MacBook</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="<c:url value='/resources/assets/img/team/profile-picture-3.jpg'/>" alt="David avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">David L. Brown</h3>
                                </div>
                                <p class="mb-0">Following the release of the 16-inch MacBook Pro in late 2019, Apple was praised for the larger ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="<c:url value='/resources/assets/img/blog/image-1.jpg'/>" class="card-img-top rounded" alt="pixel room">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">One of Google Maps’ best new features</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="<c:url value='/resources/assets/img/team/profile-picture-1.jpg'/>" alt="Jose avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">Jose Evans</h3>
                                </div>
                                <p class="mb-0">As great as Google Maps might be, not all users get to take advantage of the app’s brand new ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="<c:url value='/resources/assets/img/blog/image-3.jpg'/>" class="card-img-top rounded" alt="designer office">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">Google launches Cloud AI Platform Pipelines</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="<c:url value='/resources/assets/img/team/profile-picture-3.jpg'/>" alt="James avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">James Curran</h3>
                                </div>
                                <p class="mb-0">Richard Thomas was born in 1990, and at only 29 years old, his trajectory is good. When he is ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="../assets/img/blog/image-2.jpg" class="card-img-top rounded" alt="white laptop">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">Apple Details Reveal Remarkable MacBook</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="../assets/img/team/profile-picture-5.jpg" alt="Bonnie avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">Bonnie Green</h3>
                                </div>
                                <p class="mb-0">Following the release of the 16-inch MacBook Pro in late 2019, Apple was praised for the larger ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-lg-5">
                        <div class="card bg-white border-light p-3 rounded">
                            <a href="./blog-post.html">
                                <img src="../assets/img/blog/image-1.jpg" class="card-img-top rounded" alt="photoshop books">
                            </a>
                            <div class="card-body p-0 pt-4">
                                <a href="./blog-post.html" class="h4">One of Google Maps’ best new features</a>
                                <div class="d-flex align-items-center my-4">
                                    <img class="avatar avatar-sm rounded-circle" src="../assets/img/team/profile-picture-4.jpg" alt="Joseph avatar"> 
                                    <h3 class="h6 small ml-2 mb-0">Joseph Garth</h3>
                                </div>
                                <p class="mb-0">As great as Google Maps might be, not all users get to take advantage of the app’s brand new features ...</p>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center w-100 mt-5">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#">Previous</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">4</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">5</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="footer py-6 bg-primary text-white">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 mb-3 mb-xl-0">
                <img src="<c:url value='/resources/assets/img/brand/light.svg'/>" height="30" class="mb-3" alt="Spaces logo">
                <p>Premium Bootstrap Directory Listing Template</p>
            </div>
            <div class="col-6 col-xl-2 mb-5 mb-xl-0">
                <span class="h5">Themesberg</span>
                <ul class="footer-links mt-2">
                    <li><a target="_blank" href="https://themesberg.com/blog">Blog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/products">Products</a></li>
                    <li><a target="_blank" href="https://themesberg.com/about">About Us</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-6 col-xl-3 mb-5 mb-xl-0">
                <span class="h5">Other</span>
                <ul class="footer-links mt-2">
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/overview/">Documentation <span class="badge badge-sm badge-secondary ml-2">v3.0</span></a></li>
                    <li><a href="https://themesberg.com/docs/spaces/getting-started/changelog/">Changelog</a></li>
                    <li><a target="_blank" href="https://themesberg.com/contact">Support</a></li>
                    <li><a target="_blank" href="https://themesberg.com/licensing">License</a>
                    </li>
                </ul>
            </div>
            <div class="col-12 col-xl-4 mb-5 mb-xl-0">
                <span class="h5">Get the app</span>
                <p class="text-muted font-small mt-2">It's easy. Just select your device.</p>
                <a href="#" class="btn btn-sm btn-white mb-xl-0 mr-2">
                    <span class="d-flex align-items-center">
                        <span class="icon icon-brand mr-2"><span class="fab fa-apple"></span></span>
                        <span class="d-inline-block text-left">
                            <small class="font-weight-normal d-block">Available on</small> App Store 
                        </span> 
                    </span>
                </a>
                <a href="#" class="btn btn-sm btn-white">
                    <span class="icon icon-brand mr-2"><span class="fab fa-google-play"></span></span>
                    <span class="d-inline-block text-left">
                        <small class="font-weight-normal d-block">Available on</small> Google Play
                    </span> 
                </a>
            </div>
        </div>
        <hr class="my-3 my-lg-5">
        <div class="row">
            <div class="col mb-md-0">
                <a href="https://themesberg.com" target="_blank" class="d-flex justify-content-center">
                    <img src="<c:url value='/resources/assets/img/themesberg.svg'/>" height="25" class="mb-3" alt="Themesberg Logo">
                </a>
            <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                <p class="font-weight-normal font-small mb-0">Copyright © Themesberg
                    <span class="current-year">2020</span>. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

    <!-- Core -->
<script src="<c:url value='/resources/vendor/jquery/dist/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/popper.js/dist/umd/popper.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/headroom.js/dist/headroom.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/onscreen/dist/on-screen.umd.min.js'/>"></script>

<!-- NoUISlider -->
<script src="<c:url value='/resources/vendor/nouislider/distribute/nouislider.min.js'/>"></script>

<!-- Bootstrap Datepicker -->
<script src="<c:url value='/resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js'/>"></script>

<!-- jQuery Waypoints -->
<script src="<c:url value='/resources/vendor/waypoints/lib/jquery.waypoints.min.js'/>"></script>

<!-- Owl acrousel -->
<script src="<c:url value='/resources/vendor/owl.carousel/dist/owl.carousel.min.js'/>"></script>

<!-- Smooth scroll -->
<script src="<c:url value='/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js'/>"></script>

<!-- Fancybox -->
<script src="<c:url value='/resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js'/>"></script>

<!-- Sticky sidebar -->
<script src="<c:url value='/resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js'/>"></script>

<!-- Mapbox & Leaflet.js -->
<script src="<c:url value='/resources/vendor/leaflet/dist/leaflet.js'/>"></script>

<!-- Chartist -->
<script src="<c:url value='/resources/vendor/chartist/dist/chartist.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/>"></script>

<!-- Vector Maps -->
<script src="<c:url value='/resources/vendor/jqvmap/dist/jquery.vmap.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js'/>"></script>

<!-- Sliderform -->
<script src="<c:url value='/resources/assets/js/jquery.slideform.js'/>"></script>

<!-- Spaces custom Javascript -->
<script src="<c:url value='/resources/assets/js/spaces.js'/>"></script>
    <script>
        // here you should load content from an Ajax request and when it
        // loads you can disable the button from loading
        $('#loadOnClick').click(function() {
            $button = $(this);
            $loadContent = $('#extraContent');
            $allLoaded = $('#allLoadedText');
            $button.addClass('btn-loading');
            $button.attr('disabled', true);

            setTimeout(function() {
                $loadContent.show();
                $button.hide();
                $allLoaded.show();
            }, 1500);
        });
    </script>
</body>
</html>