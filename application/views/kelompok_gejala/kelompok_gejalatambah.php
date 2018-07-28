<div class="row">
	<div class="col-md-12">
		<h3>Tambah Data</h3>
		<form action="<?php echo site_url() ?>/kelompok_gejala/create" method="POST">
			<table class="table table-striped table-responsive">			
				<tr>
					<td>Masukkan Nama Kelompok</td>
					<td><input type="text" class="form-control" name="nama"></td>
				</tr>
				<tr>
					<td>Masukkan Keterangan</td>
					<td><input type="text" class="form-control" name="keterangan"></td>
				</tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
			<a href="<?php echo site_url()?>/kelompok_gejala" class="btn btn-danger">Batal</a>
		</form>
	</div>
</div>