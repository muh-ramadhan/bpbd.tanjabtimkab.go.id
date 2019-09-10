
<!-- MULAI SIDEBAR -->
<div class="col-lg-4">
    <div class="blog_right_sidebar">
        <aside class="single_sidebar_widget search_widget">
            <form action="#">
               <div class="form-group">
                  <div class="input-group mb-3">
                     <input type="text" class="form-control" placeholder='Masukkan Pencarian Anda'
                     onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'">
                     <div class="input-group-append">
                        <button class="btn" type="button"><i class="ti-search"></i></button>
                    </div>
                </div>
            </div>
            <button class="button rounded-0 primary-bg text-white w-100 btn_1" type="submit">Pencarian</button>
        </form>
    </aside>

    <aside class="single_sidebar_widget popular_post_widget">
        <h3 class="widget_title">Berita Terbaru</h3>
        <?php
        $berita1 = $this->M_data->beritaterbaru2(0,5);
        foreach($berita1->result() as $row){
            $judul=seo_link($row->judul);
            $tanggal=$row->tanggal;
            $photopath = str_replace('-', '/', $row->tanggal_modif);
            ?>
            <div class="media post_item">
                <div class="media-body">
                    <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>">
                        <h3><?php echo $row->judul; ?></h3>
                    </a>
                    <p><?php   echo tgl_indo($tanggal).' | '; echo $row->jam.' WIB '; ?></p>
                </div>
            </div>
        <?php } ?>
    </aside>

    <aside class="single_sidebar_widget post_category_widget">
        <h4 class="widget_title">Profil Instansi</h4>
        <?php
        $menu = $this->M_data->ambilsubmenu('',3);
        foreach($menu->result() as $row){
            ?>
            <ul class="list cat-list">
                <li>
                    <a href="<?php echo base_url();  echo $row->link_submenu;?>" class="d-flex">
                        <p><?php echo $row->nama_submenu; ?></p>
                    </a>
                </li>
            </ul>
        <?php } ?>
    </aside>

    <aside class="single_sidebar_widget post_category_widget">
        <h4 class="widget_title">Basis Data</h4>
        <?php
        $menu = $this->M_data->ambilsubmenu('',11);
        foreach($menu->result() as $row){
            ?>
            <ul class="list cat-list">
                <li>
                    <a href="<?php echo base_url();  echo $row->link_submenu;?>" class="d-flex">
                        <p><?php echo $row->nama_submenu; ?></p>
                    </a>
                </li>
            </ul>
        <?php } ?>
    </aside>
</div>
</div>
<!-- SELESAI SIDEBAR -->
</div>
</div>
</section>
    <!-- SELESAI BERITA-->