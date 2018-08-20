<div class="row">
	<div class="col-md-12">
		<h3>Tambah Data</h3>
		<form action="<?php echo site_url() ?>/nilai_cf/create" method="POST">
			<table class="table table-striped table-responsive">
			<div class="row">			
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Gejala : </span>
										</div>
										<div class="col-md-12" >
											<input type="text" name="gejala_id" class="form-control " style="font-size: 12px;">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Nama Penyakit : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="penyakit_id" class="form-control" style="font-size: 12px;">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Nilai MD : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="md" class="form-control" style="font-size: 12px;">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-2" style="margin-bottom: 5px;">
											<span>Nilai MB : </span>
										</div>
										<div class="col-md-12">
											<input type="text" name="mb" class="form-control" style="font-size: 12px;">
										</div>
									</div>
									<br>
									<button type="submit" name="submit" class="btn btn-primary btn-sm" style="border-radius: 0px; background: #3EA8FF; border-color: #3EA8FF;">Simpan</button>
									<a href="<?php echo site_url('/nilai_cf/index') ?>" class="btn btn-default btn-flat btn-sm" style="border-radius: 0px;">Batal</a>
								</div>
							</form>
						</div>	
					</div>
				</div>
				
