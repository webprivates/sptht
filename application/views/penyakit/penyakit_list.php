<div class="row">
	<div class="col-md-12">
		<h3>Penyakit List</h3>
		<a href="<?php echo site_url()?>/Penyakit/create" class="btn btn-primary btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>id</th>
				<th>Kode Penyakit</th>
				<th>Nama Penyakit</th>
				<th>Aksi</th>
			</tr>
			<?php foreach ($penyakit_data as $data): ?>
				
			<tr>
				<td><?php echo $data['id'] ?></td>
				<td><?php echo $data['kd_penyakit'] ?></td>
				<td><?php echo $data['nm_penyakit'] ?></td>
				<td>
					<a href="<?php echo site_url('/Penyakit/edit/'.$data['id'])?>" class="btn btn-default btn-sm" >Edit</a>
					<a href="<?php echo site_url('/Penyakit/hapus/'.$data['id'])?>" class="btn btn-danger btn-sm">Hapus</a>
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>