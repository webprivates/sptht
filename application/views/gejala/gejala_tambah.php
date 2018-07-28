<div class="row">
	<div class="col-md-12">
		<h3>Tambah Data</h3>
		<form action="<?php echo site_url() ?>/gejala/create" method="POST">
			<table class="table table-striped table-responsive">			
				<tr>
					<td>Masukkan Kelompok Gejala</td>
					<td>
						<select name="kelompok_gejala_id" id="kelompok_gejala_id" class='form-control'>
                    	<option value="0" selected="selected">- Kelompok Gejala -</option>
                    	<option value="1">Gejala Telinga</option>
                    	<option value="2">Gejala Hidung</option>
                    	<option value="3">Gejala Tenggorokan</option>
                		</select>
                	</td>
				</tr>
				<tr>
					<td>Masukkan Kode Gejala</td>
					<td><input type="text" class="form-control" name="kd_gejala"></td>
				</tr>
				<tr>
					<td>Masukkan Gejala</td>
					<td><input type="text" class="form-control" name="gejala"></td>
				</tr>

			</table>
			<button type="submit" name="submit" class="btn btn-primary">Simpan</button>
			<a href="<?php echo site_url()?>/gejala" class="btn btn-danger">Batal</a>
		</form>
	</div>
</div>