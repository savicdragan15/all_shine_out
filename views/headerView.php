<!doctype html>
<!--[if IE 7]>    <html class="ie7" > <![endif]-->
<!--[if IE 8]>    <html class="ie8" > <![endif]-->
<!--[if IE 9]>    <html class="ie9" > <![endif]-->
<!--[if IE 10]>    <html class="ie10" > <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
  <html lang="en-US"> <!--<![endif]-->
		<head>
                <!-- META TAGS -->
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width" />

                <!-- Title -->
                <title>All out shine</title>

                <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700,600,800' rel='stylesheet' type='text/css'>
                <link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
                <link href='http://fonts.googleapis.com/css?family=Quattrocento:400,700' rel='stylesheet' type='text/css'>
                <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
                <!-- Style Sheet-->
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/tooltipster.css">
                <link href="<?=_WEB_PATH?>/views/css/ie.css" rel="stylesheet" media="all">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/bootstrap.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/style.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/responsive.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/prettyPhoto.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/pgwmodal.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/alertify/alertify.core.css">
                <link rel="stylesheet" href="<?=_WEB_PATH?>/views/css/alertify/alertify.default.css">
                <link rel="stylesheet" type="text/css" href="<?=_WEB_PATH?>views/js/slick-1.6.0/slick/slick.css"/>
                <link rel="stylesheet" type="text/css" href="<?=_WEB_PATH?>views/js/slick-1.6.0/slick/slick-theme.css"/>
                <link rel="stylesheet" type="text/css" href="<?=_WEB_PATH?>views/js/swiper/css/swiper.min.css" />
                <!-- favicon -->
                <link rel="shortcut icon" href="<?=_WEB_PATH?>/views/images/favicon.jpg">
                
            <!-- Include the HTML5 shiv print polyfill for Internet Explorer browsers 8 and below -->
            <!--[if lt IE 10]><script src="js/html5shiv-printshiv.js" media="all"></script><![endif]-->
    
     <style>
        .swiper-container {
            width: 100%;
            height: 100%;
            margin-bottom: 1.5em;
        }
        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
        .swiper-pagination-bullet-active {
            background: #000;
        }
    </style>
		</head>
		<body>				
                    <!-- HEADER -->
                <div class="header-bar">
                    <div class="container">
                        <div class="row">
                            <div class="pric-icon span2">
                               <!-- <a href="#" class="active">&#x20ac;</a>
                                <a href="#">&#xa3;</a>
                                <a href="#">&#36;</a>-->
                            </div> 

                            <div class="span10 right">
                                <div class="social-strip">
                                    <ul>
                                        <li>
                                            <?php  if(User::isLogin()){ ?>
                                                <a href="<?=_WEB_PATH?>profile/edit/information" class="account"><?=$_SESSION['user']['email']?></a>
                                            <?php  } ?>  
                                        </li>
                                        
<!--                                        <li><a href="#" class="wish">Wish List</a></li>-->
                                        <li>
                                         <?php if(User::isLogin()){ ?>
                                            <a href="<?=_WEB_PATH.'payment/index/1'?>" class="check">Checkout</a>
                                        <?php }else{?>
                                            <a href="<?=_WEB_PATH.'payment/index/0'?>" class="check">Checkout</a>
                                        <?php }?>
                                        </li>
                                        
                                        <?php if(!User::isLogin()){?>
                                             <li><a href="<?=_WEB_PATH?>register" class="account">Register</a></li>
                                        <?php }  ?>
                                             
                                            <li>
                                             <?php if(!User::isLogin()){?>
                                                <a href="<?=_WEB_PATH?>login" class="account">Login</a>
                                             <?php }else{?>
                                                <a href="<?=_WEB_PATH?>login/logOut" class="account">Logout</a>
                                             <?php } ?>
                                            </li>
                                       
                                    </ul>
                                </div>

                               <!-- <div class="languages">
                                    <a href="#" class="english active"><img src="<?=_WEB_PATH?>/views/images/english.png" alt=""></a>
                                    <a href="#" class="german"><img src="<?=_WEB_PATH?>/views/images/german.png" alt=""></a>
                                    <a href="#" class="japan"><img src="<?=_WEB_PATH?>/views/images/japan.png" alt=""></a>
                                    <a href="#" class="turkish"><img src="<?=_WEB_PATH?>/views/images/turkish.png" alt=""></a>
                                </div> -->
                            </div>
                        </div>
                    </div>
				</div>

                <div class="header-top">
                    <div class="container">
                        <div class="row">

                            <div class="span5">
                                <div class="logo">
                                    <a href="<?=_WEB_PATH?>"><img style="width: 248px; height: 138px;" src="<?=_WEB_PATH?>/views/images/1_o.png" alt=""></a>
                                    <h1><a href="<?=_WEB_PATH?>"><span> All out shine </span></a></h1>
                                </div>
                            </div>

                            <div class="span5">
                                <form action='' method="GET" id="searchFrm" name='searchFrm'> 
                                    <input type="text" name="searchTerm" id="searchTerm" placeholder="Type and hit enter">
                                    <input type="submit" id='searchBtn' value="">
                                </form>
                                <script>
                                    window.onload=function(){
                                        $("#searchBtn").click(function(e){
                                        e.preventDefault();
                                       
                                       if($("#searchTerm").val() == ''){
                                           alert('Upisite pojam za pretragu');
                                           return;
                                       }
                                       
                                       $("#searchFrm").attr("action",'<?=_WEB_PATH."products/searchProducts/"?>'+$("#searchTerm").val()+'/1');
                                      document.getElementById("searchFrm").submit();
                                    });
                                        
                                    }
                                </script>
                            </div>

                            <div class="span2">
                                <div class="cart">
                                    <ul>
                                        <li class="first" id="view_cart"><a href="#"></a><span></span></li>
                                        <li id="cart-info"><?=isset($_SESSION['korpa'])?$_SESSION['korpa']['ukupno_proizvoda_u_korpi'].' items':'0 items'?></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <header>
                    <div class="container">
                        <div class="row">
                            <div class="span12">
                               
                            <nav class="desktop-nav">
                                <ul class="clearfix">
                                    <?php $navigation = new Navigation(); echo $navigation->renderNav();?>
                                    
                                </ul>
                            </nav>
                                
                                <select onchange="if(this.value!=='0'){window.location='<?php echo _WEB_PATH;?>'+'products/allProductsByCategory/'+this.value}">
                                    <option value='0'>Menu</option>
                                    <?php echo $navigation->renderCategory($category_id)?>
                                </select>
                            </div>
                        </div>
                    </div>
                </header>
<!-- HEADER -->
