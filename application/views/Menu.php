<!DOCTYPE html>
<html lang="en">
<head>
	<title><?=$title?></title>
	<link rel="icon" type="image/x-icon" href="<?=base_url()?>assets/awal/logo_kab.png" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<style>
	html { 
		background-color: transparent;
		background: url(<?php echo base_url('assets/awal/login.png') ?>) no-repeat center center fixed; 
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	body{	
		background-color: transparent;
	}
	.btn-sewa {
		background-color: #ed6f28 !important;
		border-color: #ed6f28 !important;
	}

	.btn-sewa:hover {
		background-color: #98471a !important;
		border-color: #ed5b28 !important;
	}
</style>
<style>
	.centered {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		color: white;
		letter-spacing: 8px;
	}
</style>
<body>
	<div class="container">
		<div class="container">
			<div class="container">
				<div class="row" style="margin-top:8%;margin-bottom:4%;">
					<div class="col-md-4 col-sm-12 mb-3">
						<a href="https://candibrama.mojokertokab.go.id/candinew">
							<div class="card">
								<img src="<?=base_url()?>/assets/awal/Candibrama.png" class="card-img-top" alt="..." style="max-height:270px;">
								<!-- <div class="card-footer">
									<center><a href="<?=base_url()?>CAwal/Login" class="card-link"><button class="btn rounded submit px-3" style="background-color:#c86835;color:#ffffff;"><b>Candi Brama</b></button></a></center>
								</div> -->
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-12 mb-3">
						<a href="https://jalasemar.mojokertokab.go.id/simbada">
							<div class="card">
								<img src="<?=base_url()?>/assets/awal/Simbada.png" class="card-img-top" alt="..." style="max-height:270px;">
								<!-- <div class="card-footer">
									<center><a href="<?=base_url()?>CAwal/Login" class="card-link"><button class="btn rounded submit px-3" style="background-color:#bd9938;color:#ffffff;"><b>Simbada</b></button></a></center>
								</div> -->
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-12 mb-3">
						<a href="https://jalasemar.mojokertokab.go.id/simpanberkas">
							<div class="card">
								<img src="<?=base_url()?>/assets/awal/arsip.png" class="card-img-top" alt="..." style="max-height:270px;">
								<!-- <div class="card-footer">
									<center><a href="<?=base_url()?>CAwal/Login" class="card-link"><button class="btn rounded submit px-3" style="background-color:#915233;color:#ffffff;"><b>Singapura</b></button></a></center>
								</div> -->
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-12 mb-3">
						<a href="#">
							<div class="card">
								<img src="<?=base_url()?>/assets/awal/Sigapuranew.png" class="card-img-top" alt="..." style="max-height:270px;">
								<!-- <div class="card-footer">
									<center><a href="<?=base_url()?>CAwal/Login" class="card-link"><button class="btn rounded submit px-3" style="background-color:#c35846;color:#ffffff;"><b>Siti</b></button></a></center>
								</div> -->
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-12 mb-3">
						<a href="https://jalasemar.mojokertokab.go.id/siti">
							<div class="card">
								<img src="<?=base_url()?>/assets/awal/Siti.png" class="card-img-top" alt="..." style="max-height:270px;">
								<!-- <div class="card-footer">
									<center><a href="<?=base_url()?>CAwal/Login" class="card-link"><button class="btn rounded submit px-3" style="background-color:#c35846;color:#ffffff;"><b>Siti</b></button></a></center>
								</div> -->
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-12 mb-3">

						<div class="card">
							<a href="#">
								<img src="<?=base_url()?>/assets/awal/sidirga.png" class="card-img-top" alt="..." style="max-height:270px;">
							</a>
							<!-- <div class="centered"><b>SIDIRGA</b></div> -->
						</div>
						<div class="card-footer p-0" style="border-top-width:0px; margin-top:-1px">
							<div class="btn-group" style="width:100%">
								<button type="button" style="width:27.6%; pointer-events:none; border:none; background-color:transparent" class="btn p-0">&nbsp;</button>
								<button type="button" style="width:23.2%; border-bottom-left-radius:5px; border-right-color: white !important; height:25px" class="btn p-0 btn-warning btn-sewa">
									<a href="https://sidirga.mojokertokab.go.id" style="color:white"><b>2022</b></a>
								</button>
								<button type="button" style="width:23.2%; border-bottom-right-radius:5px; border-left-color: white !important; height:25px" class="btn p-0 btn-warning btn-sewa">
									<a href="https://sidirga.mojokertokab.go.id/s2023" style="color:white"><b>2023</b></a>
								</button>
								<button type="button" style="width:26.8%; pointer-events:none border:none; background-color:transparent" class="btn p-0">&nbsp;</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>