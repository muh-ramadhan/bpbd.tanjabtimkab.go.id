<div class="percategory">
	<h3 class="rs"><span>PROFIL</span><span style="background:#F8C300;color: #000; text-shadow: 0px 1px 1px #fff;">INSTITUSI</span>  </h3>
	<nav class="lst-category menucustom">
		<ul class="rs nav nav-category">
			<?php
			$menu = $this->M_data->ambilsubmenu('',3);
			foreach($menu->result() as $row){
				?>
				<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a>

			<?php }
			?>
		</ul>
	</nav><!--end: .lst-category -->
</div>

<div class="percategory">
	<h3 class="rs"><span>BIDANG</span>  </h3>
	<nav class="lst-category menucustom">
		<ul class="rs nav nav-category">
			<?php
			$menu = $this->M_data->ambilsubmenu('',7);
			foreach($menu->result() as $row){
				?>
				<a href="<?php echo base_url();  echo $row->link_submenu;?>"> <li> <i class="icon iPlugGray"></i><?php echo $row->nama_submenu; ?>  </li> </a>

			<?php }
			?>
		</ul>
	</nav><!--end: .lst-category -->
</div>


<div class="percategory">
	<div class="list-group">
		<a href="<?php echo base_url();?>telpon" class="list-group-item active" style="font-size: 16px;font-family: 'Open Sans', sans-serif;font-weight: 700;"> Berita Terbaru
		</a>
		<?php
		$berita1 = $this->M_data->beritaterbaru2(0,5);
		foreach($berita1->result() as $row){
			$judul=seo_link($row->judul);
			$tanggal=$row->tanggal;
			$photopath = str_replace('-', '/', $row->tanggal_modif);
			?>
			<a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul."/";?>" class="list-group-item"><?php   echo tgl_indo($tanggal).' | '; echo $row->jam.' WIB '; ?><br>
				<span style="font-weight:700;"><?php echo $row->judul; ?></span>
			</a>
			<?php
		}
		?>

	</div>
</div>