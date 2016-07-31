<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">


<!-- them vao -->
<link href="catalog/view/theme/default/stylesheet/header.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/footer.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/lasted_product.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/featured_product.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/bestseller_product.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/style-page-home.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/style-menu-dropdown-product.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/n_v_custom_css.css" rel="stylesheet">



<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <?php echo $search; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></a></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<?php /*
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
          
        </div>
      </div>
    </div>
  </div>
</header>
*/ ?>


<?php if ($categories) { ?>
  <nav id="menu" class="navbar row">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="container">
      <div class="collapse navbar-collapse navbar-ex1-collapse" style="padding:0; margin-left:0px !important; ">
        <ul class="nav navbar-nav">



          <!-- nguyen add them menu ngang -->
          <!-- <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li> -->
          <li>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo-home-header" /></a>
          </li>

          <li class='dropdown-category'>
            <a onclick="javascript:void(0);">Product</a>
              <div class='row dropdown-category-list'>
                  <?php
                  foreach ($categories as $category) 
                  { 
                     if ($category['children']) 
                    { ?>
                          <div class='col-md-4'>
                              <a class="category-parent" href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a>
                              <ul class="list-unstyled category-ul-child">
                                <?php foreach ($category['children'] as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                <?php } ?>
                              </ul>
                          </div>
                    <?php } else { ?>
                          <div class='col-md-4'>
                            <a class="category-parent" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                          </div>
                    <?php } 
                  } 
                  ?>
              </div>
          </li>
          
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <?php /* <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li> */ ?>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>

          <?php if( !empty($informations) && count($informations) > 0  )
                { 
                  foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php   } 
                } ?>
          <!-- End nguyen add them vao -->


          <?php
          //Nguyen remove category 
          /*
          foreach ($categories as $category) 
          { 
             if ($category['children']) 
            { ?>
                  <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                    <div class="dropdown-menu">
                      <div class="dropdown-inner">
                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <ul class="list-unstyled">
                          <?php foreach ($children as $child) { ?>
                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                          <?php } ?>
                        </ul>
                        <?php } ?>
                      </div>
                      <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                  </li>
            <?php } else { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } 
          } 
          */
          ?>
          <li style="margin: 0px 0px 0px 100px;"><?php echo $cart; ?></li>
        </ul>
      </div>
    </div>
    <div>
      
    </div>
  </nav>
<?php } ?>



<?php if ($categories) { ?>
<div class="container visible-xs hidden-md hidden-lg" style="margin-bottom: 10px;">
    <select class="form-control" onchange="changeCategory(this.value);" style="text-align:center;">
        <option value="" >--- Select category ---</option>
        <?php 
          foreach ($categories as $category) 
          { 
            if ($category['children']) 
            { ?>
              <option value="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></option>
              <?php 
              foreach ($category['children'] as $child) 
              {
                if(!empty($child))
                  echo '<option value="'.$child['href'].'" > &nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;'.$child['name'].'</option>';
              }
              ?>
              <?php
            }else{
              ?>
              <option value="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></option>
              <?php
            }
          }
        ?>
    </select>
</div>
<?php } ?>




<style type="text/css">
.navbar-ex1-collapse ul li{
  border-bottom: 1px rgba(169, 169, 169, 0.37) solid;
}
</style>

<script type="text/javascript">
  function changeCategory(value){
    window.location.href = value;
  }
</script>

<script type="text/javascript">
  $(document).ready(function(){
      var url = window.location.href;
      $("#menu ul.navbar-nav li a").each(function(){
          if( $(this).attr('href')==url)
            $(this).addClass('active');
          else
            $(this).removeClass('active');
      });
});
</script>
