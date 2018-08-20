 <div class="row">
	<div class="col-md-12">
		<h3>Gejala List</h3>
		<a href="<?php echo site_url()?>/gejala/create" class="btn btn-success btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>No</th>
				<th>Kelompok Gejala</th>
				<th>Kode Gejala</th>
				<th>Gejala</th>
				<th>Aksi</th>
			</tr>
			<?php $no= 1; foreach ($gejala_data as $data): ?>
				
			<tr>
				<td><?php echo $no++ ?></td>
				<td><?php echo $data-> nama ?></td>
				<td><?php echo $data-> kd_gejala ?></td>
				<td><?php echo $data-> gejala ?></td>
				<td>
					<a href="<?php echo site_url('/gejala/edit/'.$data->id)?>" class="btn btn-warning btn-sm" >Edit</a>
					<a href="<?php echo site_url('/gejala/hapus/'.$data->id)?>" class="btn btn-danger btn-sm">Hapus</a>
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>