<div class="list-group">
  <?php foreach ($categories as $category) 
  { 
    if( empty($category)) continue; 
    ?>
      <?php if ($category['category_id'] == $category_id) 
      { ?>
          <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
          <?php if ($category['children'] ) 
          { ?>
              <?php foreach ($category['children'] as $child) 
              { 
                if(empty($child)) continue;
                ?>
                  <?php if ($child['category_id'] == $child_id) 
                  { ?>
                      <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                  <?php 
                  } else { ?>
                      <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                  <?php 
                  } ?>
                  <?php 
              } ?>
          
          <?php 
          } ?>

      <?php 
      } 
      else 
      { 
        //Truong hop load category tai trang HOME
        ?>
        <div class='div-link-hover' style="position: relative;">
            <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?>
                <?php if ($category['children'] ) 
                  echo '<i class="fa fa-caret-right pull-right" aria-hidden="true"></i>';
                ?>
            </a>
            <?php if ($category['children'] ) 
            { ?>
              <ul class="home-category-child" >
                <?php foreach ($category['children'] as $child) 
                { 
                  ?>
                    <li>
                      <a href="<?php echo $child['href']; ?>" >&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                    </li>
                    <?php 
                } ?>
              </ul>
            <?php 
            } ?>

        </div>
      <?php 
      } ?>
    
  <?php 
  } ?>
</div>

<style type="text/css">
  .home-category-child{
    right: -95%;
    z-index: 99999;
    top: 0;
    position: absolute;
    list-style: none;
    list-style-type: none;
    /*display: block;*/
    display: none;
  }
  .home-category-child a{
    width: 250px;
    display: block;
    padding: 5px 10px;
     border-radius: 2px; 
    background-color: #f1f1f1;
  }

  .div-link-hover:hover .home-category-child{
    display: block;
  }

</style>

