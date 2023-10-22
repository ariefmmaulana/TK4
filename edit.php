<?php
    // session start
    if(!empty($_SESSION))
	{ }
	else
	{ session_start(); }
    //session
	if(!empty($_SESSION['ADMIN']))
	{ }
	else
	{ header('location:login.php'); }
    // panggil file
    require 'proses/panggil.php';
    
    // tampilkan form edit
    $idGet = strip_tags($_GET['id']);
    $hasil = $proses->tampil_data_id('barang','IdBarang',$idGet);

	// var_dump($idGet);
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Edit Barang</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
    <body style="background:#586df5;">
		<div class="container">
			<br/>
            <span style="color:#fff";>Selamat Datang, <?php echo $sesi['NamaDepan'];?></span>
			<div class="float-right">	
				<a href="index.php" class="btn btn-success btn-md" style="margin-right:1pc;"><span class="fa fa-home"></span> Kembali</a> 
				<a href="logout.php" class="btn btn-danger btn-md float-right"><span class="fa fa-sign-out"></span> Logout</a>
			</div>		
			<br/><br/><br/>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-lg-6">
					<br/>
					<div class="card">
						<div class="card-header">
						<h4 class="card-title">Edit Barang - <?php echo $hasil['NamaBarang'];?></h4>
						</div>
						<div class="card-body">
						<!-- form berfungsi mengirimkan data input 
						dengan method post ke proses crud dengan paramater get aksi edit -->
							<form action="proses/crud.php?aksi=editBarang" method="POST">
								<div class="form-group">
									<label>Nama Barang</label>
									<input type="text" value="<?php echo $hasil['NamaBarang'];?>" class="form-control" name="NamaBarang" required>
								</div>
								<div class="form-group">
									<label>Keterangan</label>
									<input type="text" value="<?php echo $hasil['Keterangan'];?>" class="form-control" name="Keterangan" required>
								</div>
								<div class="form-group">
									<label>Satuan</label>
									<input type="harga" value="<?php echo $hasil['satuan'];?>" class="form-control" name="satuan" required>
								</div>
								<div class="form-group">
									<input type="hidden" value="<?php echo $hasil['IdBarang'];?>" class="form-control" name="IdBarang" required>
								</div>
								<button class="btn btn-primary btn-md" name="create"><i class="fa fa-edit"> </i> Edit Data</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</body>
</html>