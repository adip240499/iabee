<!doctype html>
<html>

<head>
	<title>Radar Chart</title>
	<script src="/iabee/vendor/bower-asset/chart.js/dist/Chart.min.js"></script>
	<script src="/iabee/vendor/bower-asset/chart.js/samples/utils.js"></script>
	<style>
		canvas {
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
		}
	</style>
</head>

<body>
	<div class="row">
		<div class="col-md-3">
			<div class="box box-default">
				<div class="box-body ">
					<div class="text-center">
						<img src="/iabee/backend/web/assets/a76a84a8/img/user2-160x160.jpg" class="img-circle" alt="User Image" width="80%" height="80%">
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-9">
			<div class="box box-default">
				<div class="box-body ">
					<div class="form-group">
						<label id="nim" class="col-sm-2 control-label">Nim</label>
						<div class="col-sm-10">
							<input value="I0716001" class="form-control" readonly>
						</div>
					</div>
					<div class="form-group">
						<label id="nim" class="col-sm-2 control-label">Angkatan</label>
						<div class="col-sm-10">
							<input value="2016" class="form-control" readonly>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="box box-solid">

		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Grafik Radar</a></li>
			<li><a data-toggle="tab" href="#menu1">Grafik Bar</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div style="width:80% , center">
					<canvas id="radar"></canvas>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade">
				<div id="container" style="width: 50%, center">
					<canvas id="vertical-bar"></canvas>
				</div>
			</div>
		</div>
	</div>



	<script>
		var color = Chart.helpers.color;
		var radarData = {
			labels: ['CPL1', 'CPL2', 'CPL3', 'CPL4', 'CPL5', 'CPL6', 'CPL7', 'CPL8', 'CPL9', 'CPL10'],
			datasets: [{
				label: 'Capaian Lulusan Mahasiswa',
				backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
				borderColor: window.chartColors.red,
				pointBackgroundColor: window.chartColors.red,
				data: [
					80,
					70,
					50,
					80,
					30,
					60,
					50,
					79,
					90,
					60
				]
			}]
		};


		var color = Chart.helpers.color;
		var barChartData = {
			labels: ['CPL1', 'CPL2', 'CPL3', 'CPL4', 'CPL5', 'CPL6', 'CPL7', 'CPL8', 'CPL9', 'CPL10'],
			datasets: [{
				label: 'Dataset 1',
				backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
				borderColor: window.chartColors.red,
				borderWidth: 1,
				data: [
					90,
					87,
					68,
					89,
					80,
					70,
					70,
					80,
					70,
					70
				],
				fill:true
			}]
		};

		window.onload = function() {
			// window.myRadar = new Chart(document.getElementById('radar'), config);

			var radar = document.getElementById('radar');
			window.myRadar = new Chart(radar, {
				type: 'radar',
				data: radarData,
				options: {
					legend: {
						position: 'top',
					},
					title: {
						display: true,
						text: 'Adip Safiudin'
					},
					scale: {
						ticks: {
							min: 0,
							max:100
						}
					}
				}
			});


			var ctx = document.getElementById('vertical-bar').getContext('2d');
			window.myBar = new Chart(ctx, {
				type: 'bar',
				data: barChartData,
				options: {
					responsive: true,
					legend: {
						position: 'top',
					},
					scales: {
						yAxes: [{
							ticks: {
								min: 0,
								max: 100
							}
						}]
					},
					title: {
						display: true,
						text: 'Chart.js Bar Chart'
					}

				}
			});
		};
	</script>

</body>

</html>