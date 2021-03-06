<div class="page-height">

    <div class="homepage-5-container">

        <div class="homepage-5-slider">
            <!--data-slides-per-view：顯示數量-->
            <div class="swiper-container" data-slides-per-view="{_SLIDES_PER_VIEW}" data-breakpoints="1" data-xs-slides="1" data-sm-slides="2" data-md-slides="2"
                data-mousewheel="1">
                <div class="swiper-button-prev swiper-button hidden-xs style-2"></div>
                <div class="swiper-button-next swiper-button hidden-xs style-2"></div>

                <div class="swiper-wrapper">

                    {foreach $list_classify as $classify}
                    <div class="swiper-slide">
                        <img src="uploads/classify_{$classify.sn}.jpg" alt="" class="tilt-effect" data-tilt-options='{$data_tilt_options}' />
                        <div class="entry full-size valign-middle">
                            <div class="text-align">
                                <div class="text">                                    
                                    <div class="align">
                                        <div class="slide-title h3 light"><a href="index.php?op=list_photo&sn={$classify.sn}">{$classify.title}</a></div>
                                            <div class="empty space col-xs-b15"></div>
                                            <div class="slide-description simple-article large light transparent">{$classify.description}</div>
                                        <div class="empty-space col-xs-b30"></div>
                                        <a class="button-link light" href="index.php?op=list_photo&sn={$classify.sn}">作品列表</a>  
                        
                                        {if isset($smarty.session.username) and $smarty.session.username=='admin'}
                                        <p><br><br>
                                        <a class="button-link light btn btn-warning" href="admin_classify.php?op=classify_modify&sn={$classify.sn}">修改分類</a></p>
                                        {/if}                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {/foreach}


                </div>
                <div class="swiper-pagination swiper-pagination-white visible-xs"></div>
            </div>

        </div>


    </div>
</div>