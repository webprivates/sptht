<div class="row">
	<div class="col-md-12">
		<h3>Nilai CF List</h3>
		<a href="<?php echo site_url()?>/nilai_cf/create" class="btn btn-primary btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>id</th>
				<th>Gejala Id</th>
				<th>Penyakit Id</th>
				<th>MD</th>
				<th>MB</th>
				<th>Aksi</th>

			</tr>
			<?php foreach ($nilaicf_data as $data): ?>
				
			<tr>
				<td><?php echo $data['id'] ?></td>
				<td><?php echo $data['gejala_id'] ?></td>
				<td><?php echo $data['penyakit_id'] ?></td>
				<td><?php echo $data['md'] ?></td>
				<td><?php echo $data['mb'] ?></td>
				<td>
					<a href="<?php echo site_url('/nilai_cf/edit/'.$data['id'])?>" class="btn btn-default btn-sm" >Edit</a>
					<a href="<?php echo site_url('/nilai_cf/hapus/'.$data['id'])?>" class="btn btn-danger btn-sm">Hapus</a>
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>