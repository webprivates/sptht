 <div class="row">
	<div class="col-md-12">
		<h3>Gejala List List</h3>
		<a href="<?php echo site_url()?>/gejala/create" class="btn btn-primary btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>id</th>
				<th>Kelompok Gejala</th>
				<th>Kode Gejala</th>
				<th>Gejala</th>
				<th>Aksi</th>
			</tr>
			<?php foreach ($gejala_data as $data): ?>
				
			<tr>
				<td><?php echo $data['id'] ?></td>
				<td><?php echo $data['kelompok_gejala_id'] ?></td>
				<td><?php echo $data['kd_gejala'] ?></td>
				<td><?php echo $data['gejala'] ?></td>
				<td>
					<a href="<?php echo site_url('/gejala/edit/'.$data['id'])?>" class="btn btn-default btn-sm" >Edit</a>
					<a href="<?php echo site_url('/gejala/hapus/'.$data['id'])?>" class="btn btn-danger btn-sm">Hapus</a>
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>