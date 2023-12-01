
<style>
.carousel-fade .carousel-inner .item {
  transition-property: opacity;
}
.carousel-fade .carousel-inner .item,
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
  opacity: 0;
}
.carousel-fade .carousel-inner .active,
.carousel-fade .carousel-inner .next.left,
.carousel-fade .carousel-inner .prev.right {
  opacity: 1;
}
.carousel-fade .carousel-inner .next,
.carousel-fade .carousel-inner .prev,
.carousel-fade .carousel-inner .active.left,
.carousel-fade .carousel-inner .active.right {
  left: 0;
  transform: translate3d(0, 0, 0);
}
.carousel-fade .carousel-control {
  z-index: 2;
}

</style>




<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
         <li data-target="#carousel" data-slide-to="0" class='active' ></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
     </ol>
    <!-- Carousel items -->
    <div class="carousel-inner">
           <div class="item active">
           <img src="<?php echo $banners[0]['image']; ?>" alt="<?php echo $banners[0]['title']; ?>" class="img-responsive" />
           <button style="position: absolute; bottom: 30%; left: 23%" class="btn btn-primary">SOHP NOW</button>
           </div>
            
             <div class="item">
              <img src="<?php echo $banners[1]['image']; ?>" alt="<?php echo $banners[1]['title']; ?>" class="img-responsive" />
              <button style="position: absolute; bottom: 30%; left: 23%" class="btn btn-primary">SOHP NOW</button>
             </div>
               
               <div class="item">
               <img src="<?php echo $banners[2]['image']; ?>" alt="<?php echo $banners[2]['title']; ?>" class="img-responsive" />
               <button style="position: absolute; bottom: 30%; left: 23%" class="btn btn-primary">SOHP NOW</button>
               </div>
    </div>

</div>


<script type="text/javascript">
$('.carousel').carousel();</script>