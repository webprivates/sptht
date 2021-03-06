<div class="row">
	<div class="col-md-12">
		<h3>Edit Data</h3>
		<form action="<?php echo site_url() ?>/gejala/edit" method="POST">
			<input type="hidden" name="id" value="<?php echo $gejala['id'] ?> ">
			<table class="table table-striped table-responsive" >
					<tr>
					<td>Masukkan Kelompok Gejala</td>
					<td><input type="text" class="form-control" name="kelompok_gejala_id" value="<?php echo $gejala['kelompok_gejala_id'] ?>"></td>
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
					<td><input type="text" class="form-control" name="kd_gejala" value="<?php echo $gejala['kd_gejala'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Gejala</td>
					<td><input type="text" class="form-control" name="gejala" value="<?php echo $gejala['gejala'] ?>"></td>
				</tr>
				<tr>
					<td>Masukkan Nama Obat</td>
					<td><input type="text" class="form-control" name="nama_obat" value="<?php echo $nama_obat['nama_obat'] ?>"></td>
				</tr>

			</table>
			<button type="submit" name="submit" class="btn btn-warning btn-sm">Edit</button>
			<a href="<?php echo site_url()?>/gejala" class="btn btn-danger btn-sm" >Batal</a>
		</form>
	</div>
</div>