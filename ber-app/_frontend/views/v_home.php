<!-- ### AWAL MULA SEBUAH CERITA ### -->

<!doctype html>
<html lang="en">

<!-- DIMULAI DARI HEAD -->
<head>

    <!-- MULAI META TAGS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- SELESAI META TAGS -->

    <!-- MULAI JUDUL -->
    <title><?php echo $judulapp; ?></title>
    <!-- SELESAI JUDUL -->

    <!-- MULAI GAYA BAWAAN -->
    <link rel="icon" href="<?php echo base_url(); ?>style/images/favicon.png">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/animate.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/themify-icons.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/flaticon.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/magnific-popup.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/slick.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/style2.css">
    <!-- SELESAI GAYA BAWAAN -->

</head>
<!-- SELESAI DARI HEAD -->

<!-- MULAI BODY -->
<body>

<!-- MULAI HEADER -->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <?php
                        $identitas = $this->M_data->identitasfooter();
                        foreach($identitas->result() as $row) {
                            ?>
                            <a class="navbar-brand" href="<?php echo base_url(); ?>">
                                <img src="<?php echo base_url()?>style/images/<?php echo $row->logo; ?>" alt="logo">
                            </a>
                        <?php } ?>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse main-menu-item justify-content-end" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <?php
                                $menu = $this->M_data->ambilmenu(2);
                                foreach($menu->result() as $row){
                                    ?>
                                    <li class="nav-item dropdown">
                                        <a href="<?php echo base_url();  echo $row->link;?>" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $row->nama_menu; ?></a>
                                        <?php
                                        $submenu = $this->M_data->ambilsubmenu('',$row->id_menu);
                                        ?>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <?php
                                            foreach($submenu->result() as $sub){
                                                $lin1=substr($sub->link_submenu, 0, 3);
                                                if ($lin1!="htt") {
                                                    $link1=base_url().$sub->link_submenu;
                                                }
                                                else {
                                                    $link1=$sub->link_submenu;
                                                }
                                                ?>
                                                <a class="dropdown-item" href="<?php echo $link1; ?>"><?php echo $sub->nama_submenu; ?></a>
                                            <?php } ?>
                                        </div>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- SELESAI HEADER -->

    <!-- MULAI IKLAN -->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-xl-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h1><b>B</b>adan <br><b>P</b>enanggulangan <br><b>B</b>encana <br><b>D</b>aerah</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SELESAI IKLAN  -->

    <!-- MULAI FITUR -->
    <section class="feature_part">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><i class="ti-layers"></i></span>
                            <h4>Pra Bencana</h4>
                            <p>Pada Kondisi situasi ini perlu adanya kegiatan-kegiatan oleh berbagai pihak terkait kesiapsiagaan, peringatan dini dan mitigasi bencana dalam penanggulangan bencana.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><i class="ti-new-window"></i></span>
                            <h4>Tanggap Darurat</h4>
                            <p>Sistem peringatan dini menjadi bagian penting dari mekanisme kesiapsiagaan masyarakat, karena peringatan dapat menjadi faktor kunci penting yang menghubungkan antara tahap kesiapsiagaan dan tanggap darurat</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_feature_part single_feature_part_2">
                            <span class="single_service_icon style_icon"><i class="ti-light-bulb"></i></span>
                            <h4>Pasca Bencana</h4>
                            <p>Pada kondisi ini dipelajari langkah apa yang dilakukan oleh berbagai pihak terkait dalam hal upaya untuk mengembalikan tatanan masyarakat seperti semula sebelum terjadinya bencana</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- SELESAI FITUR -->

    <!-- MULAI BERITA -->
    <section class="blog_part section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <p>Berita Hari Ini</p>
                        <h2>Berita Terbaru</h2>
                    </div>
                </div>
            </div>
            <div class="row">
               <?php
               $no=1;
               $beritaterbaru = $this->M_data->beritaterbaru2(0,3);
               foreach($beritaterbaru->result() as $row){
                $isi=strip_tags($row->isi_berita);
                $isi=substr($isi,0,180);
                $judul=seo_link($row->judul);
                $judulan=seo_link($row->nama_kategori);
                $photopath = str_replace('-', '/', $row->tanggal_modif);
                $a=substr($row->tanggal, 0,4);
                $b=substr($row->tanggal, 5,2);
                $c=substr($row->tanggal, 8,9);
                $tanggal=$c.'/'.$b.'/'.$a;
                if  ($row->gambar!='') {
                    $gambar=base_url() ."foto_berita/".$photopath."/".$row->gambar;
                }
                else {
                    $gambar=base_url() ."foto_berita/image-default.jpg";
                }
                ?>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img src="<?php echo $gambar; ?>" class="card-img-top" alt="blog" width="360px" height="313px">
                            <div class="card-body">
                                <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul;?>">
                                    <h5 class="card-title"><?php echo $row->judul; ?></h5>
                                </a>
                                <p><?php echo $isi; ?>...</p>
                                <ul>
                                    <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul;?>" class="btn_4">Selengkapnya</a>
                                    <li> <span class="ti-comments"></span><?php echo $row->hari; ?>, <?php echo tgl_indo($row->tanggal); ?> | <?php echo $row->jam; ?></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }  ?>
        </div>
    </div>
</section>
<!-- SELESAI BERITA -->

<!-- MULAI BERHITUNG -->
<section class="member_counter">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="single_member_counter">
                    <span class="counter"><?php echo $jumlah_kegiatan ?></span>
                    <h4>Kegiatan</h4>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single_member_counter">
                    <span class="counter"><?php echo $jumlah_artikel ?></span>
                    <h4>Aritikel</h4>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single_member_counter">
                    <span class="counter"><?php echo $jumlah_berita ?></span>
                    <h4>Berita</h4>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single_member_counter">
                    <span class="counter"><?php echo $jumlah_pengumuman ?></span>
                    <h4>Pengumunan</h4>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- SELESAI BERHITUNG -->

<!-- MULAI GALERI KEGIATAN -->
<section class="special_cource padding_top">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-5">
                <div class="section_tittle text-center">
                    <h2>Galeri Kegiatan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            $fotokolom=$this->M_data->fotokolom(0,3);
            foreach($fotokolom->result() as $row){
                $isi=strip_tags($row->keterangan);
                $isi=substr($isi,0,140);
                $judul=seo_link($row->judul_fotoberita);
                $photopath = str_replace('-', '/', $row->tanggal_modif);
                $a=substr($row->tanggal, 0,4);
                $b=substr($row->tanggal, 5,2);
                $c=substr($row->tanggal, 8,9);
                $tanggal=$c.'/'.$b.'/'.$a;
                ?>
                <div class="col-sm-6 col-lg-4">
                    <div class="single_special_cource">
                        <a href="<?php echo base_url(); ?>galeri" class="btn_4">Lihat Arsip Kegiatan</a>
                        <img src="<?php echo base_url(); ?>foto_galeri/<?php echo$photopath; ?>/small_<?php echo $row->gbr_gallery;?>" width="100%" height="200px" class="special_img" alt="">
                        <blockquote class="generic-blockquote">
                            <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                <h5><?php echo $row->judul_fotoberita; ?></h5></a>
                            </blockquote>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- SELESAI GALERI KEGIATAN -->

    <!-- MULAI PENGUMUMAN -->
    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">
                <h3 class="mb-30">Pengumuman</h3>
                <div class="row">
                    <div class="col-lg-12">
                        <a href="<?php echo base_url(); ?>pengumuman" class="btn_4">Lihat Arsip Pengumuman</a>
                        <?php
                        $pengumuman=$this->M_data->pengumuman(5);
                        foreach($pengumuman->result() as $row){
                            $judul=seo_link($row->judul);
                            $tahunp=substr($row->tanggal_pengumuman, 0,4);
                            $bulanp=substr($row->tanggal_pengumuman, 5,2);
                            $tanggalp=substr($row->tanggal_pengumuman, 8,10);
                            $photopath = str_replace('-', '/', $row->tanggal_pengumuman);
                            ?>
                            <blockquote class="generic-blockquote">
                                <a style="font-size: 18px;" href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row->id_pengumuman."/".$judul;?>"><?php echo $row->judul; ?></a>
                                <br>
                                <?php echo $tanggalp; ?>/<?php echo $bulanp; ?>/<?php echo $tahunp; ?> Jam <?php echo $row->jam; ?>
                            </blockquote>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SELESAI PENGUMUMAN -->

    <!-- MULAI ARTIKEL -->
    <section class="blog_part">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <h2>Artikel & Multimedia</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    $no=1;
                    $artikel = $this->M_data->artikelterbaru2(0,3);
                    foreach($artikel->result() as $row){
                        $isi=strip_tags($row->isi_artikel);
                        $isi=substr($isi,0,100);
                        $judul=seo_link($row->judul);
                        $judulan=seo_link($row->nama_kategori);
                        $photopath = str_replace('-', '/', $row->tanggal_modif);
                        $a=substr($row->tanggal, 0,4);
                        $b=substr($row->tanggal, 5,2);
                        $c=substr($row->tanggal, 8,9);
                        $tanggal=$c.'/'.$b.'/'.$a;
                        if  ($row->gambar!='') {
                            $gambar=base_url() ."foto_artikel/".$photopath."/".$row->gambar;
                        }
                        else {
                            $gambar=base_url() ."foto_berita/image-default.jpg";
                        }
                        ?>
                        <div class="col-sm-6 col-lg-4 col-xl-4">
                            <div class="single-home-blog">
                                <div class="card">
                                    <img src="<?php echo $gambar; ?>" class="card-img-top" alt="blog" width="360px" height="313px">
                                    <div class="card-body">
                                        <a href="<?php echo base_url(); ?>artikel/detail/<?php echo $row->id_artikel."/".$judul;?>">
                                            <h5 class="card-title"><?php echo $row->judul; ?></h5>
                                        </a>
                                        <p><?php echo $isi; ?>...</p>
                                        <ul>
                                            <li> <span class="ti-comments"></span><?php echo $row->hari; ?>, <?php echo tgl_indo($row->tanggal); ?> | <?php echo $row->jam; ?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                        $no=$no+1;
                    } ?>
                </div>
            </div>
        </section>
        <!-- SELESAI ARTIKEL -->

        <!-- MULAI INFORMASI UMUM DEFINISI DAN JENIS BENCANA -->
        <div class="whole-wrap">
            <div class="container box_1170">
                <div class="section-top-border">
                    <h3 class="mb-30">Informasi Umum Definisi dan Jenis Bencana</h3>
                    <div class="row">

                        <!-- MULAI GAYA KOSTUM -->
                        <style>
                        .accordion {
                          background-color: #eee;
                          color: #444;
                          cursor: pointer;
                          padding: 18px;
                          width: 100%;
                          border: none;
                          text-align: left;
                          outline: none;
                          font-size: 15px;
                          transition: 0.4s;
                      }

                      .active, .accordion:hover {
                          background-color: #ccc;
                      }
                      .panel {
                          padding: 0 18px;
                          display: none;
                          background-color: white;
                          overflow: hidden;
                      }
                  </style>
                  <!-- SELESAI GAYA KOSTUM -->

                  <!-- MULAI INFROMASI BAGIAN KIRI -->
                  <div class="col-md-6">
                    <div class="single-defination">
                      <button class="accordion">+ Banjir</button>
                      <div class="panel">
                          <p><b>Banjir</b> adalah peristiwa atau keadaan dimana terendamnya suatu daerah atau daratan karena volume air yang meningkat.</p>
                      </div>
                      <button class="accordion">+ Tsunami</button>
                      <div class="panel">
                          <p><b>Tsunami</b> berasal dari bahasa Jepang yang berarti gelombang ombak lautan (“tsu” berarti lautan, “nami” berarti gelombang ombak). Tsunami adalah serangkaian gelombang ombak laut raksasa yang timbul karena adanya pergeseran di dasar laut akibat gempa bumi.</p>
                      </div>
                      <button class="accordion">+ Gempa Bumi</button>
                      <div class="panel">
                          <p><b>Gempa Bumi</b> adalah getaran atau guncangan yang terjadi di permukaan bumi yang disebabkan oleh tumbukan antar lempeng bumi, patahan aktif, akitivitas gunung api atau runtuhan batuan.</p>
                      </div>
                      <button class="accordion">+ Tanah Longsor</button>
                      <div class="panel">
                          <p><b>Tanah longsor</b> merupakan salah satu jenis gerakan massa tanah atau batuan, ataupun percampuran keduanya, menuruni atau keluar lereng akibat terganggunya kestabilan tanah atau batuan penyusun lereng.</p>
                      </div>
                      <button class="accordion">+ Banjir Bandang</button>
                      <div class="panel">
                          <p><b>Banjir Bandang</b> adalah banjir yang datang secara tiba-tiba dengan debit air yang besar yang disebabkan terbendungnya aliran sungai pada alur sungai.</p>
                      </div>
                      <button class="accordion">+ Letusan Gunung Api</button>
                      <div class="panel">
                          <p><b>Letusan Gunung Api</b> merupakan bagian dari aktivitas vulkanik yang dikenal dengan istilah “erupsi”. Bahaya letusan gunung api dapat berupa awan panas, lontaran material (pijar), hujan abu lebat, lava, gas racun, tsunami dan banjir lahar.</p>
                      </div>
                  </div>
              </div>
              <!-- SELESAI INFROMASI BAGIAN KIRI -->

              <!-- MULAI INFORMASI BAGIAN KANAN -->
              <div class="col-md-6">
                <div class="single-defination">
                  <button class="accordion">+ Abrasi</button>
                  <div class="panel">
                      <p><b>Abrasi</b> adalah proses pengikisan pantai oleh tenaga gelombang laut dan arus laut yang bersifat merusak. Abrasi biasanya disebut juga erosi pantai. Kerusakan garis pantai akibat abrasi ini dipicu oleh terganggunya keseimbangan alam daerah pantai tersebut. Walaupun abrasi bisa disebabkan oleh gejala alami, namun manusia sering disebut sebagai penyebab utama abrasi.</p>
                  </div>
                  <button class="accordion">+ Kebakaran</button>
                  <div class="panel">
                      <p><b>Kebakaran</b> adalah situasi dimana bangunan pada suatu tempat seperti rumah/pemukiman, pabrik, pasar, gedung dan lain-lain dilanda api yang menimbulkan korban dan/atau kerugian.</p>
                  </div>
                  <button class="accordion">+ Kekeringan</button>
                  <div class="panel">
                      <p><b>Kekeringan</b> adalah ketersediaan air yang jauh di bawah kebutuhan air untuk kebutuhan hidup, pertanian, kegiatan ekonomi dan lingkungan. Adapun yang dimaksud kekeringan di bidang pertanian adalah kekeringan yang terjadi di lahan pertanian yang ada tanaman (padi, jagung, kedelai dan lain-lain) yang sedang dibudidayakan.</p>
                  </div>
                  <button class="accordion">+ Angin Puting Beliung</button>
                  <div class="panel">
                      <p><b>Angin Puting Beliung</b> adalah angin kencang yang datang secara tiba-tiba, mempunyai pusat, bergerak melingkar menyerupai spiral dengan kecepatan 40-50 km/jam hingga menyentuh permukaan bumi dan akan hilang dalam waktu singkat (3-5 menit).</p>
                  </div>
                  <button class="accordion">+ Kebakaran Hutan dan Lahan</button>
                  <div class="panel">
                      <p><b>Kebakaran Hutan dan Lahan</b> adalah suatu keadaan di mana hutan dan lahan dilanda api, sehingga mengakibatkan kerusakan hutan dan lahan yang menimbulkan kerugian ekonomis dan atau nilai lingkungan. Kebakaran hutan dan lahan seringkali menyebabkan bencana asap yang dapat mengganggu aktivitas dan kesehatan masyarakat sekitar.</p>
                  </div>
                  <button class="accordion">+ Gelombang Pasang atau Badai</button>
                  <div class="panel">
                      <p><b>Gelombang Pasang atau Badai</b> adalah gelombang tinggi yang ditimbulkan karena efek terjadinya siklon tropis di sekitar wilayah Indonesia dan berpotensi kuat menimbulkan bencana alam. Indonesia bukan daerah lintasan siklon tropis tetapi keberadaan siklon tropis akan memberikan pengaruh kuat terjadinya angin kencang, gelombang tinggi disertai hujan deras.</p>
                  </div>
              </div>
          </div>
          <!-- SELESAI INFORMASI BAGIAN KANAN -->

          <!-- MULAI SCRIPT KOSTUM -->
          <script>
              var acc = document.getElementsByClassName("accordion");
              var i;
              for (i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function() {
                  this.classList.toggle("active");
                  var panel = this.nextElementSibling;
                  if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                } }); }
            </script>
            <!-- SELESAI SCRIPT KOSTUM -->

        </div>
    </div>
</div>
</div>
<!-- SELESAI INFORMASI UMUM DEFINISI DAN JENIS BENCANA -->
<?php $this->load->view("v_footer"); ?>

<!-- MULAI JAVASCRIPT -->
<script src="<?php echo base_url(); ?>style/_/js/jquery-1.12.1.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/popper.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/jquery.magnific-popup.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/swiper.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/masonry.pkgd.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/jquery.nice-select.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/slick.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/custom.js"></script>
<!-- SELESAI JAVASCRIPT -->

</body>
<!-- SELESAI BODY -->
</html>
<!-- ### AKHIR DARI SEMUA CERITA ### -->