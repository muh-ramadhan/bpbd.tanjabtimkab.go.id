    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <?php
                            if (count($detail_artikel->result())>0) {
                                foreach($detail_artikel->result() as $row){
                                    $photopath = str_replace('-', '/', $row->tanggal_modif);
                                    $judul=seo_link($row->nama_kategori);
                                    ?>
                                    <p>
                                        <a href="<?php echo base_url(); ?>">Home</a>
                                        <span>/</span>
                                        <a href="<?php echo base_url(); ?>artikel">Semua Artikel</a>
                                        <span>/</span>
                                        <?php echo $row->judul; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- breadcrumb start-->

            <!--================Blog Area =================-->
            <section class="blog_area section_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mb-5 mb-lg-0">
                            <div class="blog_left_sidebar">
                                <article class="blog_item">
                                    <div class="blog_item_img">
                                      <?php if  ($row->gambar!='') {?>
                                        <img class="card-img rounded-0" src="<?php echo base_url(); ?>foto_artikel/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="">
                                    <?php }else {?>
                                      <img class="card-img rounded-0" src="<?php echo base_url(); ?>foto_artikel/image-default-big.jpg" alt="">
                                  <?php }?>
                                  <a href="#" class="blog_item_date">
                                    <h3><?php echo $row->dibaca; ?> x</h3>
                                    <p>Dibaca</p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="#" class="blog_item_date">
                                    <h2><?php echo $row->judul; ?></h2>
                                </a>
                                <p><?php echo $row->isi_artikel;  ?></p>
                                <ul class="blog-info-link">
                                 <li><?php
                                 $tanggal=$row->tanggal;
                                 echo nama_hari($tanggal).', ';
                                 echo tgl_indo($tanggal).' | ';
                                 echo $row->jam.' WIB ';
                                 ?></li>
                             </ul>
                         </div>
                         <?php
                     }}
                     ?>
                 </article>

                 <!-- MULAI PAGINATION -->
                 <nav class="blog-pagination justify-content-center d-flex">
                    <ul class="pagination">
                        <li class="page-item">
                            <?php echo $pagination; ?>
                        </li>
                    </ul>
                </nav>
                <!-- SELESAI PAGINATION -->
            </div>
        </div>