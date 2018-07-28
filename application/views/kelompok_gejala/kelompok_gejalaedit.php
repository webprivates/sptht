<div class="row">
	<div class="col-md-12">
		<h3>Edit Data</h3>
		<form action="<?php echo site_url() ?>/kelompok_gejala/edit" method="POST">
			<input type="hidden" name="id" value="<?php echo $kelompok_gejala['id'] ?> ">
			<table class="table table-striped table-responsive" >
				<tr>
					<td>Masukkan Nama Kelompok</td>
					<td><input type="text" class="form-control" name="nama" value="<?php echo $kelompok_gejala['nama'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Keterangan</td>
					<td><input type="text" class="form-control" name="keterangan" value="<?php echo $kelompok_gejala['keterangan'] ?>"></td>
				</tr>
			</table>
			<button type="submit" name="submit" class="btn btn-primary btn-sm">Edit</button>
			<a href="<?php echo site_url()?>/kelompok_gejala" class="btn btn-danger btn-sm" >Batal</a>
		</form>
	</div>
</div>