<div class="row">
	<div class="col-md-12">
		<h3>Tambah Data</h3>
		<form action="<?php echo site_url() ?>/nilai_cf/create" method="POST">
			<table class="table table-striped table-responsive">			
				<tr>
					<td>Masukkan Gejala</td>
					<td>
						<select name="gejala_id" class="form-control" style="font-size: 12px;">
							<option>- Pilih -</option>
							<?php $gejala = $this->Nilai_model->getlistgejalaid();

							 ?>
							<?php foreach ($gejala->result() as $key => $value) {?>
								<option value="<?php echo $key->id ?>"><?php echo $key->gejala; ?></option>
							<?php } ?>
						</select><!-- <input type="text" class="form-control" name="gejala_id"></td> -->
				</tr>
				<tr>
					<td>Masukkan Penyakit Id</td>
					<td><input type="text" class="form-control" name="penyakit_id"></td>
				</tr>
				<tr>
					<td>Masukkan Nilai MD</td>
					<td><input type="text" class="form-control" name="md"></td>
				</tr>
				<tr>
					<td>Masukkan Nilai MB</td>
					<td><input type="text" class="form-control" name="mb"></td>
				</tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
			<a href="<?php echo site_url()?>/nilai_cf" class="btn btn-danger">Batal</a>
		</form>
	</div>
</div>