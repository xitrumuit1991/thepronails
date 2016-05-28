<h3 class="featured-product"><?php echo $heading_title; ?>
  <a href="#" class="pull-right">
    <i class="fa fa-angle-double-right"></i>
  </a>
</h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">

      <!-- nguyen custom -->
        <div class="show-modal-detail" onclick="showModal('<?php echo $product['product_id']; ?>');"><i class="fa fa-search-plus"></i></div>
      
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        
        <!-- bỏ thong tin san pham -->
        <!-- <p><?php echo $product['description']; ?></p> -->
        
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <!--<span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>--></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>





<!-- Nguyen modal popup -->
<script type="text/javascript">
$(document).ready(function(){
  showModal = function(id)
  {
    var cus_id = '#modal_id_'+id;
    $(cus_id).modal('show');
  }
});
</script>


<?php
if( !empty($products) )
{
   foreach ($products as $product) { ?>
    <div id="modal_id_<?php echo $product['product_id']; ?>" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><a href='<?php echo $product['href']; ?>'><?php echo $product['name']; ?></a></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                      <div class="col-sm-6">
                        <a href='<?php echo $product['href']; ?>'>
                          <img class="image" src="<?php echo $product['thumb']; ?>"/>
                        </a>
                      </div>
                      <div class="col-sm-6">
                          <b><a href='<?php echo $product['href']; ?>'>
                              <div class="text text-danger">Model: <?php echo $product['model']; ?></div>
                            </a>
                          </b>

                          <div><?php echo $product['description']; ?></div>
                          <div class="text text-danger">Price: <?php echo $product['price']; ?></div>
                          <div class="text text-info">Quantity: <?php echo $product['quantity']; ?></div>
                          <div class="text text-warning">Post date: <?php echo $product['date_modified']; ?></div>
                          
                      </div>
                    </div>
                    <?php
                    // echo '<pre>';
                    // print_r($product);
                    // echo '</pre>';
                    ?>
                    <!-- <p>Do you want to save changes you made to document before closing?</p> -->
                    <!-- <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p> -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     
                    <!-- <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo "Buy"; ?></span></button> -->
                    <!-- <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button> -->
                    <!-- <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button> -->
                    <a href='<?php echo $product['href']; ?>'>
                      <button type="button" class="btn btn-primary">More</button>
                    </a> 
                </div>
            </div>
        </div>
    </div>
  <?php 
  }
}
?>
