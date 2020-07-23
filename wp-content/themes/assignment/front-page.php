<?php
/*
Template Name: Front-page
*/
get_header();
?>


<div class="container">
   <div class="row flex flex-column-mob">
      <div class="col-sm-8 col-md-9 order-2">
         <main class="press-release">
            <div class="row" data-repeat-into>
               <div class="col-md-6" data-repeat="10">
                  <article class="press-post press-post--consumer">
                     <div class="press-post__image" style="background-image: url(<?php echo get_template_directory_uri();?>/assets/images/press_release_article_img.png)"></div>
                     <div class="press-post__data">
                        <div class="press-post__meta">
                           <span>
                               <span class="category">Consumer | </span>
                               <span class="date">AUGUST 6, 2019</span>
                           </span>

                        </div>
                        <div class="press-post__title">
                           <a href="Press.Release-details.en.html">Ooredoo Announces Partnership with Al Khalij Commercial Bank (al Khaliji) to Enable Online
                              Banking Payments</a>
                           <div class="tag-line">
                              <a class="tag" href="">Tag 1</a>
                              <a class="tag" href="">Tag 2</a>
                           </div>
                        </div>
                     </div>
                  </article>
               </div>
            </div>

            <nav class="pager">
                <ul class="pagination">
                    <li class="arrow"><a href="#">
                        <i class="fa fa-angle-double-left" aria-hidden="true"></i>
                    </a>
                    </li>
                    <li class="arrow"><a href="#"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                    <li><a href="">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li class="arrow"><a href="#">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>

                    </a></li>
                    <li><span>11 pages</span></li>
                </ul>
            </nav>
         </main>
      </div>
      <div class="col-sm-4 col-md-3 order-1">
         <aside>
            <div class="filters-box">
                <div class="filters-box__title">Filter by Date</div>
                <ul class="filters-box__filters" data-repeat-into>
                    <li class="filters-box__filter" data-repeat="5">
                        <input name="filter" id="date_filter" type="checkbox" class="red-checkbox"/>
                        <label for="date_filter">
                            <span data-values="December 2019,November 2019,October 2019,September 2019">January 2020</span></label>
                    </li>
                </ul>
                <a class="filters-box__show-more" href="#"><span>Show more</span><i class="fa fa-angle-down"></i></a>
                </div>
         </aside>
      </div>
   </div>
</div>


<?php
get_footer();
?>