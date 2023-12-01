<?php echo $header; ?>

<style>
  #p-container {
    padding-top: 0px;
  }

  @media screen and (max-width: 1300px) {
    #p-container {
      max-width: 1100px;
      margin: auto;
    }
  }

  .fa-home {
    display: none;
  }
  .breadcrumb li:nth-child(2) {
    display: none;
  }

  .panel-default {
    border: none;
    box-shadow: none;
    border-top: thin solid #8b8b8b;
    border-radius: 0;
  }
  .panel-body {
    border: none !important;
    padding: 10px;
    text-align: justify;
  }
  .panel-default > .panel-heading {
    padding: 0;
    border-radius: 0;
    color: #212121;

    border-color: #ccc;
    background: none;
    border-left: none;
    border-right: none;
  }
  .panel-title {
    font-size: 14px;
  }

  a:active,
  a:focus {
    outline: 0;
    -moz-outline-style: none;
  }

  .mfp-bg {
    z-index: 999999;
  }
  .mfp-wrap {
    z-index: 9999999;
  }
  .panel-title > a {
    display: block;
    padding: 15px;
    text-decoration: none;
  }

  .more-less {
    float: right;
    color: #212121;
  }

  .panel-group .panel {
    border-radius: 0px;
  }

  select {
    border: none !important;
    box-shadow: none !important;
  }

  #qtys,
  .szs {
    cursor: pointer;
  }
  #qtys:hover,
  .szs:hover {
    background-color: #f1f1f1;
  }
  .mfp-arrow-left {
    left: 60px;
  }
  .mfp-arrow-right {
    margin-right: 60px;
  }

  .mfp-img {
    max-height: none !important;
  }
  .product-heading {
    text-transform: uppercase;
    padding-left: 15px;
  }
  p {
    color: #333 !important;
  }
</style>

<link
  rel="stylesheet"
  type="text/css"
  href="catalog/view/theme/default/stylesheet/slick.css"
/>
<script
  type="text/javascript"
  src="catalog/view/javascript/slick.min.js"
></script>
<link
  rel="stylesheet"
  type="text/css"
  href="catalog/view/theme/default/stylesheet/slick-theme.css"
/>

<section id="p-container">
  <div class="container">
    <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    <br />
    <div class="row">
        <?php echo $content_top; ?>
          <div class="col-lg-6">
            <?php if ($thumb || $images) { ?>
  
            <div id="s_wrap">
              <ul class="slider slider-for">
                <?php if ($thumb) { ?>
                <li class="zoom">
                  <img class="img-responsive" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                </li>
                <?php } ?>
  
                <?php if ($images) { ?>
                <?php foreach ($images as $image) { ?>
                <li>
                  <img
                    class="img-responsive"
                    style="margin: auto"
                    src="<?php echo $image['popup']; ?>"
                    title="<?php echo $heading_title; ?>"
                    alt="<?php echo $heading_title; ?>"
                  />
                </li>
                <?php } ?>
                <?php } ?>
              </ul>
  
              <ul class="slider slider-nav">
                <?php if ($thumb) { ?>
                <li style="padding: 20px">
                  <img
                    class="img-responsive"
                    src="<?php echo $thumb; ?>"
                    title="<?php echo $heading_title; ?>"
                    alt="<?php echo $heading_title; ?>"
                  />
                </li>
                <?php } ?>
  
                <?php if ($images) { ?>
                <?php foreach ($images as $image) { ?>
                <li style="padding: 20px">
                  <img
                    class="img-responsive"
                    style="margin: auto"
                    src="<?php echo $image['thumb']; ?>"
                    title="<?php echo $heading_title; ?>"
                    alt="<?php echo $heading_title; ?>"
                  />
                </li>
                <?php } ?>
                <?php } ?>
              </ul>
            <?php } ?>
          <!-- +++++++++++++=DESCRIPTION TABS+++++++++++++++++ -->
          <ul class="nav nav-tabs">
            <li class="active">
              <a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
          <!-- +++++++++++++=DESCRIPTION TABS ENDS+++++++++++++++++ -->
          </div>
          </div>
  
          <div class="col-lg-6">
            <h1 class="product-heading">
              <?php echo strtolower($heading_title); ?>
            </h1>
            <?php if ($review_status) { ?>
            <div class="rating">
              <p style="padding-left: 15px;">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($rating < $i) { ?>
                <span class="fa fa-stack"
                  ><i class="fa fa-star-o fa-stack-1x"></i
                ></span>
                <?php } else { ?>
                <span class="fa fa-stack"
                  ><i class="fa fa-star fa-stack-1x"></i
                  ><i class="fa fa-star-o fa-stack-1x"></i
                ></span>
                <?php } ?>
                <?php } ?>
                <a
                  href=""
                  onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"
                  ><?php echo $reviews; ?></a
                >
                /
                <a
                  href=""
                  onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"
                  ><?php echo $text_write; ?></a
                >
              </p>
            </div>
            <?php } ?>
            <ul style="padding-left: 15px;" class="list-unstyled">
              <?php if ($manufacturer) { ?>
              <li>
                <?php echo $text_manufacturer; ?>
                <a href="<?php echo $manufacturers; ?>"
                  ><?php echo $manufacturer; ?></a
                >
              </li>
              <?php } ?>
              <?php if ($reward) { ?>
              <li>
                <?php echo $text_reward; ?>
                <?php echo $reward; ?>
              </li>
              <?php } ?>
              <li>
                <?php echo $text_stock; ?>
                <?php echo $stock; ?>
              </li>
            </ul>
            <?php if ($price) { ?>
            <ul style="padding-left: 15px;" class="list-unstyled">
              <?php if (!$special) { ?>
              <li>
                <h3 id="mrp"><?php echo $price; ?></h3>
              </li>
              <?php } else { ?>
              <li>
                <span style="text-decoration: line-through"
                  ><?php echo $price; ?></span
                >
              </li>
              <li>
                <h2><?php echo $special; ?></h2>
              </li>
              <?php } ?>
              <?php if ($tax) { ?>
              <li>
                <?php echo $text_tax; ?>
                <?php echo $tax; ?>
              </li>
              <?php } ?>
              <?php if ($points) { ?>
              <li>
                <?php echo $text_points; ?>
                <?php echo $points; ?>
              </li>
              <?php } ?>
              <?php if ($discounts) { ?>
              <li>
                <hr />
              </li>
              <?php foreach ($discounts as $discount) { ?>
              <li>
                <?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?>
              </li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
            <div id="product">
              <div class="form-group">
                <div style="margin-top: 20px" class="row">
                  <div class="col-sm-3 col-xs-12">
                    <div style="border: thin solid #ccc">
                      <input
                        type="hidden"
                        name="product_id"
                        value="<?php echo $product_id; ?>"
                      />
  
                      <select
                        id="qtys"
                        name="quantity"
                        style="
                          border-radius: none;
                          font-size: 14px;
                          box-shadow: none;
                          height: 40px;
                          margin-top: 1px;
                        "
                        class="form-control"
                      >
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          selected
                          value="1"
                        >
                          1
                        </option>
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          value="2"
                        >
                          2
                        </option>
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          value="3"
                        >
                          3
                        </option>
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          value="4"
                        >
                          4
                        </option>
                      </select>
                    </div>
                  </div>
  
                  <?php if ($options) { ?>
  
                  <?php foreach ($options as $option) { ?>
                  <?php if ($option['type'] == 'select') { ?>
                  <div style="margin-bottom: 10px" class="col-sm-7 col-xs-12">
                    <div
                      style="border: thin solid #ccc; padding-left: 0px"
                      class="col-sm-12 szs"
                    >
                      <select
                        style="height: 40px; font-size: 13px; margin-top: 1px"
                        name="option[<?php echo $option['product_option_id']; ?>]"
                        id="input-option<?php echo $option['product_option_id']; ?>"
                        class="form-control szs szs1"
                      >
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          value=""
                        >
                          Please Select Size
                        </option>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <option
                          style="
                            line-height: 40px;
                            padding: 2.5px;
                            margin-top: 1px;
                          "
                          value="<?php echo $option_value['product_option_value_id']; ?>"
                        >
                          <?php echo $option_value['name']; ?>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
  
                  <?php } ?>
  
                  <?php if ($option['type'] == 'textarea') { ?>
                  <div
                    class="
                      form-group<?php echo($option['required']?'required':'');?>
                    "
                  >
                    <label
                      class="control-label"
                      for="input-option<?php echo $option['product_option_id']; ?>"
                      ><?php echo $option['name']; ?></label
                    >
                    <textarea
                      name="option[<?php echo $option['product_option_id']; ?>]"
                      rows="5"
                      placeholder="<?php echo $option['name']; ?>"
                      id="input-option<?php echo $option['product_option_id']; ?>"
                      class="form-control"
                    >
  <?php echo $option['value']; ?></textarea
                    >
                  </div>
                  <?php } ?>
  
                  <?php } ?>
  
                  <?php } ?>
  
                  <div class="col-sm-9">
                    <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block">
                      ADD TO BAG
                    </button>
                    <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');">
                      <i class="fa fa-heart"></i> ADD TO WISHLIST
                    </button>
                  </div>
                </div>
              </div>
  
              <div class="row">
                <div class="col-sm-12" style="text-align: left">
                  <p style="color: #333"><?php print_r($description);?></p>
                  <hr />
                </div>
              </div>
  <!-- ================RELATED PRODUCTS================ -->

  <?php if ($products) { ?>
    <h3><?php echo $text_related; ?></h3>
    <div class="row">
      <?php $i = 0; ?>
      <?php foreach ($products as $product) { ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-xs-8 col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-xs-6 col-md-4'; ?>
      <?php } else { ?>
      <?php $class = 'col-xs-6 col-sm-3'; ?>
      <?php } ?>
      <div class="<?php echo $class; ?>">
        <div class="product-thumb transition">
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
          <div class="caption">
            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
            <p><?php echo $product['description']; ?></p>
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <?php for ($j = 1; $j <= 5; $j++) { ?>
              <?php if ($product['rating'] < $j) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
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
            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
        </div>
      </div>
      <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
      <div class="clearfix visible-md visible-sm"></div>
      <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
      <div class="clearfix visible-md"></div>
      <?php } elseif (($i+1) % 4 == 0) { ?>
      <div class="clearfix visible-md"></div>
      <?php } ?>
      <?php $i++; ?>
      <?php } ?>
    </div>
    <?php } ?>
            
  
    </div>
  </div>
</section>


<script type="text/javascript">
  $("select[name='recurring_id'], input[name=\"quantity\"]").change(
    function () {
      $.ajax({
        url: "index.php?route=product/product/getRecurringDescription",
        type: "post",
        data: $(
          "input[name='product_id'], input[name='quantity'], select[name='recurring_id']"
        ),
        dataType: "json",
        beforeSend: function () {
          $("#recurring-description").html("");
        },
        success: function (json) {
          $(".alert, .text-danger").remove();

          if (json["success"]) {
            $("#recurring-description").html(json["success"]);
          }
        },
      });
    }
  );

  $(".slider-for").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: true,
    asNavFor: ".slider-nav",
  });

  $(".slider-nav").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    asNavFor: ".slider-for",
    dots: true,
    arrows: true,
    centerMode: false,
    focusOnSelect: true,
  });
  if ($(".slick-track li").length < 7) {
    $(".slick-dots").css("display", "none");
  }
</script>
<script type="text/javascript">
  $("#button-cart").on("click", function () {
    $.ajax({
      url: "index.php?route=checkout/cart/add",
      type: "post",
      data: $(
        "#product input[type='text'], #product input[type='hidden'], #product input[type='radio']:checked, #product input[type='checkbox']:checked, #product select, #product textarea"
      ),
      dataType: "json",
      beforeSend: function () {
        $("#button-cart").button("loading");
      },
      complete: function () {
        $("#button-cart").button("reset");
      },
      success: function (json) {
        $(".alert, .text-danger").remove();
        $(".form-group").removeClass("has-error");

        if (json["error"]) {
          if (json["error"]["option"]) {
            for (i in json["error"]["option"]) {
              var element = $("#input-option" + i.replace("_", "-"));

              if (element.parent().hasClass("input-group")) {
                element
                  .parent()
                  .after(
                    '<div class="text-danger">' +
                      json["error"]["option"][i] +
                      "</div>"
                  );
              } else {
                element.after(
                  '<div class="text-danger">' +
                    json["error"]["option"][i] +
                    "</div>"
                );
              }
            }
          }

          if (json["error"]["recurring"]) {
            $("select[name='recurring_id']").after(
              '<div class="text-danger">' +
                json["error"]["recurring"] +
                "</div>"
            );
          }

          // Highlight any found errors
          $(".text-danger").parent().addClass("has-error");
        }

        if (json["success"]) {
          $(".breadcrumb").after(
            '<div class="alert alert-success">' +
              json["success"] +
              '<button type="button" class="close" data-dismiss="alert">&times;</button></div>'
          );

          $("#cart_text1").html(json["total"][0]);

          $("#cart #product_mark").load(
            "index.php?route=common/cart/info #product_mark"
          );
          $("#cart").slideDown();
          $("html, body").animate({ scrollTop: 0 }, 500);
          setTimeout(function () {
            $("#cart").slideUp();
          }, 4000);
        }
      },
      error: function (xhr, ajaxOptions, thrownError) {
        alert(
          thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText
        );
      },
    });
  });
</script>

<script type="text/javascript">
  $(".date").datetimepicker({
    pickTime: false,
  });

  $(".datetime").datetimepicker({
    pickDate: true,
    pickTime: true,
  });

  $(".time").datetimepicker({
    pickDate: false,
  });

  $("button[id^='button-upload']").on("click", function () {
    var node = this;

    $("#form-upload").remove();

    $("body").prepend(
      '<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>'
    );

    $("#form-upload input[name='file']").trigger("click");

    if (typeof timer != "undefined") {
      clearInterval(timer);
    }

    timer = setInterval(function () {
      if ($("#form-upload input[name='file']").val() != "") {
        clearInterval(timer);

        $.ajax({
          url: "index.php?route=tool/upload",
          type: "post",
          dataType: "json",
          data: new FormData($("#form-upload")[0]),
          cache: false,
          contentType: false,
          processData: false,
          beforeSend: function () {
            $(node).button("loading");
          },
          complete: function () {
            $(node).button("reset");
          },
          success: function (json) {
            $(".text-danger").remove();

            if (json["error"]) {
              $(node)
                .parent()
                .find("input")
                .after('<div class="text-danger">' + json["error"] + "</div>");
            }

            if (json["success"]) {
              alert(json["success"]);

              $(node).parent().find("input").val(json["code"]);
            }
          },
          error: function (xhr, ajaxOptions, thrownError) {
            alert(
              thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText
            );
          },
        });
      }
    }, 500);
  });
</script>

<script type="text/javascript">
  $("#button-review").on("click", function () {
    $.ajax({
      url: "index.php?route=product/product/write&product_id=<?php echo $product_id; ?>",
      type: "post",
      dataType: "json",
      data: $("#form-review").serialize(),
      beforeSend: function () {
        $("#button-review").button("loading");
      },
      complete: function () {
        $("#button-review").button("reset");
      },
      success: function (json) {
        $(".alert-success, .alert-danger").remove();

        if (json["error"]) {
          $("#review").after(
            '<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' +
              json["error"] +
              "</div>"
          );
        }

        if (json["success"]) {
          $("#review").after(
            '<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' +
              json["success"] +
              "</div>"
          );

          $("input[name='name']").val("");
          $("textarea[name='text']").val("");
          $("input[name='rating']:checked").prop("checked", false);
        }
      },
    });
  });
  $(document).ready(function () {
    $(".thumbnails").magnificPopup({
      type: "image",
      delegate: "a",
      gallery: {
        enabled: true,
      },

      enableEscapeKey: true,
    });
  });

  $("#wishheart").click(function () {
    $(this).children("li").removeClass("fa-heart-o").addClass("fa-heart");
  });

  function localwish(a) {
    $.ajax({
      url: "index.php?route=common/lustlist/add",
      type: "post",
      data: "product_id=" + a,
      dataType: "json",
      success: function (a) {
        console.log("works");
      },
      error: function (xhr, ajaxOptions, thrownError) {
        console.log(
          thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText
        );
      },
    });
  }
  $(".size_guide").click(function () {
    $("#myModal").modal("toggle");
  });
</script>
<?php echo $footer; ?>
