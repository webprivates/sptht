<div class="row">
	<div class="col-md-12">
		<h3>Edit Data</h3>
		<form action="<?php echo site_url() ?>/Penyakit/edit" method="POST">
			<input type="hidden" name="id" value="<?php echo $Penyakit['id'] ?> ">
			<table class="table table-striped table-responsive" >
				<tr>
					<td>Masukkan Kode Penyakit</td>
					<td><input type="text" class="form-control" name="kd_penyakit" value="<?php echo $Penyakit['kd_penyakit'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Nama Penyakit</td>
					<td><input type="text" class="form-control" name="nm_penyakit" value="<?php echo $Penyakit['nm_penyakit'] ?>"></td>
				</tr>
			</table>
			<button type="submit" name="submit" class="btn btn-primary btn-sm">Edit</button>
			<a href="<?php echo site_url()?>/penyakit" class="btn btn-danger btn-sm" >Batal</a>
		</form>
	</div>
</div>