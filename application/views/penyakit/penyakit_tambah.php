<div class="row">
	<div class="col-md-12">
		<h3>Tambah Data</h3>
		<form action="<?php echo site_url() ?>/Penyakit/create" method="POST">
			<table class="table table-striped table-responsive">			
				<tr>
					<td>Masukkan Kode Penyakit</td>
					<td><input type="text" class="form-control" name="kd_penyakit"></td>
				</tr>
				<tr>
					<td>Masukkan Nama Penyakit</td>
					<td><input type="text" class="form-control" name="nm_penyakit"></td>
				</tr>
				<tr>
					<td>Masukkan Nama Obat</td>
					<td><input type="text" class="form-control" name="nama_obat"></td>
				</tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
			<a href="<?php echo site_url()?>/penyakit" class="btn btn-danger">Batal</a>
		</form>
	</div>
</div>