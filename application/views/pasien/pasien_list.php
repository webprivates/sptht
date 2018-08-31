<div class="row">
	<div class="col-md-12">
		<h3>Data Pasien</h3>
		<a href="<?php echo site_url()?>/pasien/create" class="btn btn-success btn-sm" >Tambah data</a>
		<table class="table table-striped table-responsive">
			<tr>
				<th>id</th>
				<th>Nama Pasien</th>
				<th>Username</th>
				<th>Password</th>
				<th>Umur</th>
				<th>Jenis Kelamin</th>
				<th>Alamat</th>
				<th>Riwayat Pasien</th>
				<th>Aksi</th>

			</tr>
			<?php foreach ($pasien_data as $data): ?>
				
			<tr>
				<td><?php echo $data['id'] ?></td>
				<td><?php echo $data['nama'] ?></td>
				<td><?php echo $data['username'] ?></td>
				<td><?php echo $data['password'] ?></td>
				<td><?php echo $data['umur'] ?></td>
				<td><?php echo $data['jenkel'] ?></td>
				<td><?php echo $data['alamat'] ?></td>
				<td>
					<a href="<?php echo base_url()?>/dashboard/riwayat" class="btn btn-sm btn-default btn-flat pull-right">Lihat Riwayat</a>
				</td>
				
				<td>
					<a href="<?php echo site_url('/pasien/edit/'.$data['id'])?>" class="btn btn-warning btn-sm" >Edit</a>
					<a href="<?php echo site_url('/pasien/hapus/'.$data['id'])?>" class="btn btn-danger btn-sm">Hapus</a>
					
					
				</td>
			</tr>
			<?php endforeach ?>
		</table>
	</div>
</div>