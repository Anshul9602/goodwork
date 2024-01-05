<style>
#overlay_search {
  border: 1px solid;
  border-radius: 30px;
    position: absolute;
    right: 50%;
    display: none;
    background-color: #fff;
    justify-content: center;
    align-items: center;
    z-index: 9999999;
    margin-top: 5px;
    width: 300px;
}
#search_top {
    border: none;
    width: 200px;
    background: transparent;
    border-bottom: thin solid rgb(255, 255, 255, 0.2) !important;
    color: #444;
    padding: 10px;
    font-size: 14px;
    outline: none !important;
}
</style>
<div id="search" class="input-group">

  <span class="input-group-btn">
    <button type="button" style="background:none; border:none; margin-left:-40px;" class="btn btn-default btn-sm">
      <svg data-icon="search" id="search" viewBox="0 0 512 512" width="100%" height="100%">
        <path class="fil0" d="M495,466.2L377.2,348.4c29.2-35.6,46.8-81.2,46.8-130.9C424,103.5,331.5,11,217.5,11C103.4,11,11,103.5,11,217.5   S103.4,424,217.5,424c49.7,0,95.2-17.5,130.8-46.7L466.1,495c8,8,20.9,8,28.9,0C503,487.1,503,474.1,495,466.2z M217.5,382.9   
              C126.2,382.9,52,308.7,52,217.5S126.2,52,217.5,52C308.7,52,383,126.3,383,217.5S308.7,382.9,217.5,382.9z">
        </path>
     </svg>
    </button>
  </span>

  

</div>
<div id="overlay_search"><div class="ma" style="display: flex;width: 100%;justify-content: space-around;padding: 5px;align-items: center;">
    <input type="text" name="search" value="<?php echo $search; ?>" placeholder="Search" id="search_top" class="form-control input-lg" />
    <li class="fa fa-search search_icon_top" style="    cursor: pointer;"></li></div>
  </div>
<script>
    $("#search").click(function (e) {
      e.preventDefault();

      $("#overlay_search").fadeToggle();
    });

    $(".search_icon_top").click(function () {
    url = $("base").attr("href") + "index.php?route=product/search";

    var value = $("#search_top").val();

    if (value) {
      url += "&search=" + encodeURIComponent(value);
    }

    location = url;
  });

  $("#search_top").keypress(function (e) {
    var key = e.which;
    if (key == 13) {
      // the enter key code
      url = $("base").attr("href") + "index.php?route=product/search";

      var value = $("#search_top").val();

      if (value) {
        url += "&search=" + encodeURIComponent(value);
      }

      location = url;
    }
  });

</script>