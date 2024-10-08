<?php
if ($this->uri->segment(2,0)==null or $this->uri->segment(2,0)=="index") {
?>
 <!-- Social Buttons CSS -->
    <link href="<?php echo base_url()?>style/bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet">
		 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Data Telpon Penting</h1>
                </div>
            </div>
		<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-th-list fa-fw"></i> Telpon Penting Terbaru
                        </div>
                        <div class="panel-body">
						<br>
					 <center>
						<a class="btn btn-app btn-light btn-xs radius-4">
							<i class="ace-icon fa fa-home bigger-160"></i> Home
						</a>

						<a href="<?php echo base_url(); ?>telpon/add" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-plus-circle bigger-160"></i> Add
						</a>

						<a href="<?php echo base_url(); ?>telpon" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-refresh bigger-160"></i> Refresh
						</a>



						</center>
						<div class="clearfix"></div>
						<br>

	<?php
    if (count($artikel)) {
	?>
	 <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th class="no" colspan="0" id="ck" title="Pilih Semua">
									<input type="checkbox" id="selectall"></th>
                                            <th>Nama Instansi</th>
                                            <th>No Telpon</th>
                                            <th>Urutan</th>
											<th>Publish</th>
											<th>Operator</th>
											<th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>

	<?php
	$no=1;
	foreach($artikel as $key => $row){
		$judul=seo_link($row['nama_telpon']);
	?>
	   <tr class="odd">
			<td><?php echo $no; ?></td>
            <td><center><input type="checkbox" name="cek[]" class="case" value="<?php echo $row['id_telpon']; ?>" id="id<?php echo $no; ?>" rel="ck" title="Pilih"></center></td>
            <td><a class="bold" href="<?php echo base_url(); ?>telpon/edit/<?php echo $row['id_telpon']."/".$judul."/";?>"> <?php echo $row['nama_telpon']; ?> </a></td>
			<td><?php echo $row['no_telpon']; ?></td>
			<td><input value="<?php echo $row['urutan']; ?>" type="text" name="urutan[]" size="5" style="width:25px;text-align:center;"> </td>
			<td>
			<?php if ($row['jangkrik']=='Y') {?>
				<a href="<?php echo base_url(); ?>telpon/nonaktif/<?php echo $row['id_telpon']."/".$judul."/";?>" class="btn btn-info btn-circle btn-lg"><i class="fa fa-check"></i> </a>
			<?php } else {?>
				<a href="<?php echo base_url(); ?>telpon/aktif/<?php echo $row['id_telpon']."/".$judul."/";?>" 	class="btn btn-warning btn-circle btn-lg"><i class="fa fa-times"></i> </a>
			<?php } ?>
			</td>

            <td class="center"><?php echo $row['nama_lengkap']; ?></td>
            <td class="center">
				<a href="<?php echo base_url(); ?>telpon/edit/<?php echo $row['id_telpon']."/".$judul."/";?>" class="btn btn-block btn-social btn-dropbox">
					<i class="fa fa-pencil"></i> Edit
                </a>

				<a href="<?php echo base_url(); ?>telpon/delete/<?php echo $row['id_telpon']."/".$judul."/";?>" class="btn btn-block btn-social btn-pinterest" onclick="return confirm('Apakah Anda benar-benar mau menghapusnya?')">
					<i class="fa fa-times"></i> Delete
				</a>
			</td>
		</tr>

  <?php
    $no=$no+1;
	}
	?>
									</tbody>
                                </table>
                            </div>

							<div class="clear"></div>

	  <center>
		  <div class="pagination">
		<ul class="tsc_pagination">
		<?php echo $pagination; ?>
		</ul>
		</div>
	 </center>
	<?php
	}
	else {
    ?>

	Maaf, Data Belum Tersedia

	<?php } ?>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
            </div>

		<?php
}
else if ($this->uri->segment(2,0)=='add') {
        ?>
<?php
	$tanggal=date('d-m-Y');
?>


 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tambah Telpon Penting</h1>
                </div>
            </div>
		<?php echo form_open_multipart('telpon/a_simpan'); ?>
            <div class="row">
                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-wrench fa-fw"></i> Tambah Telpon Penting
                        </div>
                        <div class="panel-body">
						<div class="aksi" style="border-bottom:1px solid #ccc; margin-bottom:20px; ">
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>

						<a href="<?php echo base_url(); ?>telpon" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						<div class="clearfix"></div>
						</div>
							<div class="form-group">
								<label>Nama Instansi</label>
								<input  class="form-control" type="text" name="nama" value="">
							</div>
							<div class="form-group">
								<label>No. Telpon</label>
								<input  class="form-control" type="text" name="nomor" value="">
							</div>
							<div class="form-group">
								<label>Publish</label>
									<div class="radio">
										<label>
											<input type="radio" name="aktif" id="optionsRadios1" value="Y" checked>Ya
                                        </label>
									</div>
                                    <div class="radio">
										<label>
											<input type="radio" name="aktif" id="optionsRadios2" value="N">Tidak
										</label>
									</div>
                            </div>
							<div class="form-group">
								<label>Alamat</label>
								<input  class="form-control" type="text" name="alamat" value="">
							</div>
							<div class="form-group">
								<label>Website</label>
								<input  class="form-control" type="text" name="website" value="">
							</div>
						  <div class="form-group">
								<label>Email</label>
								<input  class="form-control" type="text" name="email" value="">
							</div>

						 <div class="clearfix"></div>
						<div class="aksi" style="border-top:1px solid #ccc; margin-top:20px; ">
						<div class="clearfix"></div>
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>

						<a href="<?php echo base_url(); ?>telpon" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						</div>
                        </div>
                    </div>
                </div>
            </div>
	<?php echo form_close(); ?>
		<?
		}
else if ($this->uri->segment(2,0)=='edit') {
        ?>
 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Telpon Penting</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
							<i class="fa fa-wrench fa-fw"></i>Edit Telpon Penting
                        </div>
                        <div class="panel-body">
					<?php echo form_open_multipart('telpon/a_edit'); ?>

		<?php
		$edit = $this->M_dataadmin->edittelpon($this->uri->segment(3,0));
		foreach($edit->result_array() as $raw)
		{
		?>
						<input type="hidden" name="id" value="<?php echo $raw['id_telpon']; ?>">
						<div class="aksi" style="border-bottom:1px solid #ccc; margin-bottom:20px; ">
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>

						<a href="<?php echo base_url(); ?>telpon" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						<div class="clearfix"></div>
						</div>

							<div class="form-group">
								<label>Nama Kategori</label>
								<input  class="form-control" type="text" name="nama" value="<?php echo $raw['nama_telpon']; ?>">
							</div>
							<div class="form-group">
								<label>No. Telpon</label>
								<input  class="form-control" type="text" name="nomor" value="<?php echo $raw['no_telpon']; ?>">
							</div>

							<div class="form-group">
            <label>Publish</label>
		<?php if ($raw['aktif']=='Y'){?>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios1" value="Y" checked>Ya </label> </div>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios2" value="N">Tidak </label> </div>
		<?php } else {?>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios1" value="Y">Ya </label> </div>
			<div class="radio"> <label> <input type="radio" name="aktif" id="aktifradios2" value="N" checked>Tidak </label> </div>
		<?php } ?>
            </div>
			<div class="form-group">
								<label>Alamat</label>
								<input  class="form-control" type="text" name="alamat" value="<?php echo $raw['alamat']; ?>">
							</div>
							<div class="form-group">
								<label>Website</label>
								<input  class="form-control" type="text" name="website" value="<?php echo $raw['website']; ?>">
							</div>
						  <div class="form-group">
								<label>Email</label>
								<input  class="form-control" type="text" name="email" value="<?php echo $raw['email']; ?>">
							</div>

			<?php } ?>
						<div class="clearfix"></div>
						<div class="aksi" style="border-top:1px solid #ccc; margin-top:20px; ">
						<div class="clearfix"></div>
						<center>
						<button type="submit" class="btn btn-app btn-primary btn-xs radius-4">
							<i class="ace-icon fa fa-floppy-o bigger-160"></i> Save
						</button>

						<a href="<?php echo base_url(); ?>telpon" class="btn btn-app btn-warning  btn-xs  radius-4">
							<i class="ace-icon fa fa-times bigger-160"></i> Cancel
						</a>
						</center>
						</div>
				<?php echo form_close(); ?>
						</div>
                    </div>


                </div>



            </div>
		<?php
}
?>
