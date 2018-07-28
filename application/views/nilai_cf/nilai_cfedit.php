<div class="row">
	<div class="col-md-12">
		<h3>Edit Data</h3>
		<form action="<?php echo site_url() ?>/nilai_cf/edit" method="POST">
			<input type="hidden" name="id" value="<?php echo $nilai_cf['id'] ?> ">
			<table class="table table-striped table-responsive" >
				<tr>
					<td>Masukkan Gejala_Id</td>
					<td><input type="text" class="form-control" name="gejala_id" value="<?php echo $nilai_cf['gejala_id'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Penyakit_Id</td>
					<td><input type="text" class="form-control" name="penyakit_id" value="<?php echo $nilai_cf['penyakit_id'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Nilai MD</td>
					<td><input type="text" class="form-control" name="md" value="<?php echo $nilai_cf['md'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Nilai MB</td>
					<td><input type="text" class="form-control" name="mb" value="<?php echo $nilai_cf['mb'] ?>"></td>
				</tr>
			</table>
			<button type="submit" name="submit" class="btn btn-primary btn-sm">Edit</button>
			<a href="<?php echo site_url()?>/nilai_cf" class="btn btn-danger btn-sm" >Batal</a>
		</form>
	</div>
</div>