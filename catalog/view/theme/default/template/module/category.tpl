<div class="row title-categories">  CATEGORIES</div>
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
              <table class="home-category-child table" >
                <?php foreach ($category['children'] as $child) 
                { 
                  ?>
                    <tr>
                      <td>
                        <a class="" href="<?php echo $child['href']; ?>" >&nbsp;&nbsp;&nbsp;&nbsp; <i style="font-size: 10px; font-weight: 100;" class="fa fa-minus"></i> &nbsp; <?php echo $child['name']; ?></a>
                      </td>
                    </tr>
                    <?php 
                } ?>
              </table>
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
    right: -100%;
    z-index: 99999;
    top: 0;
    position: absolute;
    list-style: none;
    list-style-type: none;
    /*display: block;*/
    display: none;
  }
  .home-category-child td{
    background-color: #f1f1f1;
    padding: 0 !important;
    margin: 0 !important;
    border: none;
  }
  .home-category-child td a{
    width: 100%;
    height: 100%;
    padding: 10px;
    display: block;
  }

  .div-link-hover:hover .home-category-child{
    display: block;
  }




</style>

