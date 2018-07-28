<div class="row">
	<div class="col-md-12">
		<h3>Kelompok Gejala List</h3>
		<a href="<?php echo site_url()?>/kelompok_gejala/create" class="btn btn-primary btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>id</th>
				<th>Nama Kelompok Gejala</th>
				<th>Keterangan</th>
				<th>Aksi</th>

			</tr>
			<?php foreach ($kelompokgejala_data as $data): ?>
				
			<tr>
				<td><?php echo $data['id'] ?></td>
				<td><?php echo $data['nama'] ?></td>
				<td><?php echo $data['keterangan'] ?></td>
				
				<td>
					<a href="<?php echo site_url('/kelompok_gejala/edit/'.$data['id'])?>" class="btn btn-default btn-sm" >Edit</a>
					<a href="<?php echo site_url('/kelompok_gejala/hapus/'.$data['id'])?>" class="btn btn-danger btn-sm">Hapus</a>
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>