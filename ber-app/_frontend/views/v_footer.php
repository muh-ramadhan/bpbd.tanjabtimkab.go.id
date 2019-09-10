<!-- MULAI FOOTER -->
<footer class="footer-area">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-sm-6 col-md-4 col-xl-3">
				<div class="single-footer-widget footer_1">
					<?php
					$identitas = $this->M_data->identitasfooter();
					foreach($identitas->result() as $row) {
						?>
						<a href="<?php echo base_url()?>"><img src="<?php echo base_url()?>style/images/<?php echo $row->logo; ?>" alt=""></a>
						<p><?php echo $row->meta_deskripsi; ?></p>
					<?php } ?>
				</div>
			</div>
			<div class="col-sm-6 col-md-4 col-xl-4">
				<div class="single-footer-widget footer_2">
					<h4>Berlangganan</h4>
					<p>Dapatkan informasi update terbaru <?php echo $judulapp; ?> melalui email anda
					</p>
					<form action="#">
						<div class="form-group">
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder='Masukkan email anda'
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Masukkan email anda'">
								<div class="input-group-append">
									<button class="btn btn_1" type="button"><i class="ti-angle-right"></i></button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-xl-3 col-sm-6 col-md-4">
				<div class="single-footer-widget footer_2">
					<h4>Alamat Kantor</h4>
					<li class="d-none d-lg-block">
						<a class="btn_1" href="https://goo.gl/maps/je4bLRFnSHCFZfqL9">Google Maps</a>
					</li>
					<br>
					<div class="contact_info">
						<?php
						$identitas = $this->M_data->identitasfooter();
						foreach($identitas->result() as $row) {
							?>
							<p><span>Alamat : </span><?php echo $row->alamat; ?></p>
							<p><span>Telp/Fax : </span> <?php echo $row->no_telp; ?></p>
							<p><span>E-Mail : </span> <?php echo $row->email; ?></p>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="copyright_part_text text-center">
					<div class="row">
						<div class="col-lg-12">
							<p class="footer-text m-0"> Copyright &copy; <script>document.write(new Date().getFullYear());</script> <?php echo $judulappfooter; ?> | <a href="http://diskominfo.tanjabtimkab.go.id//" target="_blank">Diskominfo Tanjabtimkab</a>
							</p>
							<div class="social_icon">
								<a href="#"> <i class="ti-facebook"></i> </a>
								<a href="#"> <i class="ti-twitter-alt"></i> </a>
								<a href="#"> <i class="ti-instagram"></i> </a>
								<a href="https://github.com/muh-ramadhan"> <i class="ti-github"></i> </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- SELESAI FOOTER -->
