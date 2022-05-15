<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>REST</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Google fonts - Popppins for copy-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- orion icons-->
<link rel="stylesheet" href="css/orionicons.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.png?3">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body onload="load()">
	<!-- navbar-->
	<header class="header">
		<nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">
			<a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i
				class="fas fa-align-left"></i></a><a href="index.html"
				class="navbar-brand font-weight-bold text-uppercase text-base">REST
				API</a>
			<ul class="ml-auto d-flex align-items-center list-unstyled mb-0">


			</ul>
		</nav>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<div
				class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
			<ul class="sidebar-menu list-unstyled">
				<li class="sidebar-list-item"><a href="index.jsp"
					class="sidebar-link text-muted active"><i
						class="o-home-1 mr-3 text-gray"></i><span>User Management</span></a></li>
			</ul>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<section class="forms">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<h3 class="h4">user</h3>
					</div>
					<div class="card-body">
						<form class="form-horizontal">
							<div class="form-group row">
								<div class="col-sm-9">
									<input id="PID" type="hidden"	value="0" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">pcode</label>
								<div class="col-sm-9">
									<input id="pcode" type="text"	placeholder="pcode" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">PName</label>
								<div class="col-sm-9">
									<input id="PName" type="text"	placeholder="PName" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">PNIC</label>
								<div class="col-sm-9">
									<input id="PNIC" type="text"	placeholder="PNIC" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">phoneNo</label>
								<div class="col-sm-9">
									<input id="phoneNo" type="text"	placeholder="phoneNo" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">email</label>
								<div class="col-sm-9">
									<input id="email" type="text"	placeholder="email" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">address</label>
								<div class="col-sm-9">
									<input id="address" type="text"	placeholder="address" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
							<label class="col-sm-3 form-control-label">password</label>
								<div class="col-sm-9">
									<input id="password" type="text"	placeholder="password" class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-9 offset-sm-3">
									<input onclick="save()" type="button" value="Save" class="btn btn-primary">
									<input type="reset" value="Reset" class="btn btn-primary">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="col-lg-12">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h3 class="h4">History</h3>
				</div>
				<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover" id="table">
						<thead>
						<tr>
							<th>#</th>
							<th>PID</th>
							<th>pcode</th>
							<th>PName</th>
							<th>PNIC</th>
							<th>phoneNo</th>
							<th>email</th>
							<th>address</th>
							<th>password</th>
						</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>

		<div class="col-lg-12">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<div class="input-group mb-3">
					<input id="searchID" type="Number" class="form-control" placeholder="Search by ID" aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button onclick="search()" class="btn btn-outline-secondary" type="button">Search</button>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover" id="idTable">
						<thead>
						<tr>
							<th>#</th>
							<th>PID</th>
							<th>pcode</th>
							<th>PName</th>
							<th>PNIC</th>
							<th>phoneNo</th>
							<th>email</th>
							<th>address</th>
							<th>password</th>
						</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
</div>				</section>
			</div>
			<footer
				class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 text-center text-md-left text-primary">
							<p class="mb-2 mb-md-0">SLIIT &copy; 2021-2022</p>
						</div>
						<div class="col-md-6 text-center text-md-right text-gray-400">
							<p class="mb-0">
								Design by <a href="#" class="external text-gray-400">SLIIT
									3RD YEAR</a>
							</p>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="ajax/ajax.js"></script>
	<script src="sweetalert/sw.js"></script>
	<script src="ajax/jquery.3.2.1.min.js"></script>
	<script type="text/javascript">

	function getRow() {
		var table = document.getElementById('table');
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				document.getElementById("PID").value = this.cells[1].textContent;
				document.getElementById("pcode").value = this.cells[2].textContent;
				document.getElementById("PName").value = this.cells[3].textContent;
				document.getElementById("PNIC").value = this.cells[4].textContent;
				document.getElementById("phoneNo").value = this.cells[5].textContent;
				document.getElementById("email").value = this.cells[6].textContent;
				document.getElementById("address").value = this.cells[7].textContent;
				document.getElementById("password").value = this.cells[8].textContent;
			};
		}
	}

	function getRowSearch() {
		var table = document.getElementById('idTable');
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				document.getElementById("PID").value = this.cells[1].textContent;
				document.getElementById("pcode").value = this.cells[2].textContent;
				document.getElementById("PName").value = this.cells[3].textContent;
				document.getElementById("PNIC").value = this.cells[4].textContent;
				document.getElementById("phoneNo").value = this.cells[5].textContent;
				document.getElementById("email").value = this.cells[6].textContent;
				document.getElementById("address").value = this.cells[7].textContent;
				document.getElementById("password").value = this.cells[8].textContent;
			};
		}
	}

	function getID() {
		var table = document.getElementById('table');
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				document.getElementById("PID").value = this.cells[1].textContent;
			};
		}
	}

	function getIDserch() {
		var table = document.getElementById('idTable');
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				document.getElementById("PID").value = this.cells[1].textContent;
			};
		}
	}

	function resetForm() {
		document.getElementById("PID").value = "0";
		document.getElementById("pcode").value = "";
		document.getElementById("PName").value = "";
		document.getElementById("PNIC").value = "";
		document.getElementById("phoneNo").value = "";
		document.getElementById("email").value = "";
		document.getElementById("address").value = "";
		document.getElementById("password").value = "";
	}

	function save() {
		var PID = $('#PID').val();
		PID = parseInt(PID);
		if (PID === 0) {
			if(ValidInput()){
				$.ajax({
					url : 'http://localhost:8080/api/webresources/UserResources/User',
					method : 'POST',
					headers : {
						"Content-Type" : "application/json"
					},
					data : getJSON(),
					success : function(data) {
						$("#idTable").find("tr:gt(0)").remove();
						$("#table").find("tr:gt(0)").remove();
						load();
						resetForm();
						alert(data);
					},
					error : function(jqXHR, exception) {
						alert("error");
					}
				});
			}else{
				alert("Fill form");
			}
		}else{
			if(ValidInput()){
				$.ajax({
					url : 'http://localhost:8080/api/webresources/UserResources/User',
					method : 'PUT',
					headers : {
						"Content-Type" : "application/json"
					},
					data : getJSON(),
					success : function(data) {
						$("#idTable").find("tr:gt(0)").remove();
						$("#table").find("tr:gt(0)").remove();
						load();
						resetForm();
						alert(data);
					},
					error : function(jqXHR, exception) {
						alert("error");
					}
				});
			}else{
				alert("Fill form");
			}
		}
	}

	function delet(){
		getID();
		swal({
			title: "Are you sure?",
			text: "Do you realy want to Delete this?",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					$.ajax({
						url : 'http://localhost:8080/api/webresources/UserResources/User/' + $('#PID').val(),
						method: 'DELETE',
						success: function (resultText) {
							$("#table").find("tr:gt(0)").remove();
							$("#idTable").find("tr:gt(0)").remove();
							load();
							swal("Deleted!", {
								icon: "success",
								});
							},
							error: function (jqXHR, exception) {
								swal("fail");
							}
						});
					} else {
						swal("Safe!");
					}
				});
	}

	function deletSearch(){
		getIDserch();
		swal({
			title: "Are you sure?",
			text: "Do you realy want to Delete this?",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
			.then((willDelete) => {
				if (willDelete) {
					$.ajax({
						url : 'http://localhost:8080/api/webresources/UserResources/User/' + $('#PID').val(),
						method: 'DELETE',
						success: function (resultText) {
							$("#table").find("tr:gt(0)").remove();
							$("#idTable").find("tr:gt(0)").remove();
							load();
							swal("Deleted!", {
								icon: "success",
								});
							},
							error: function (jqXHR, exception) {
								swal("fail");
							}
						});
					} else {
						swal("Safe!");
					}
				});
	}

	function load() {
		$.ajax({
			url : 'http://localhost:8080/api/webresources/UserResources/Users',
			method : 'GET',
			headers : {
				Accept : "application/json",
				"Content-Type" : "application/json"
			},
			success : function(data, textStatus, errorThrown) {
				var items = [];
				$.each(data.user,function(key, val) {
					var index = key + 1;
					items.push("<tr>");
					items.push("<td>" + index + "</td>");
					items.push("<td>" + val.PID + "</td>");
					items.push("<td>" + val.pcode + "</td>");
					items.push("<td>" + val.PName + "</td>");
					items.push("<td>" + val.PNIC + "</td>");
					items.push("<td>" + val.phoneNo + "</td>");
					items.push("<td>" + val.email + "</td>");
					items.push("<td>" + val.address + "</td>");
					items.push("<td>" + val.password + "</td>");
					items.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
					items.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
					items.push("</tr>");
				});
			$("<tbody/>", {
				html : items.join("")
			}).appendTo("#table");
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("Ajax request fail");
			},
			timeout : 120000,
		});
	}

	function getJSON() {
		return JSON.stringify({
			"PID" : $('#PID').val(),
			"pcode" : $('#pcode').val(),
			"PName" : $('#PName').val(),
			"PNIC" : $('#PNIC').val(),
			"phoneNo" : $('#phoneNo').val(),
			"email" : $('#email').val(),
			"address" : $('#address').val(),
			"password" : $('#password').val(),
		});
	}

	function ValidInput(){
		var PID = $('#PID').val();
		var pcode = $('#pcode').val();
		var PName = $('#PName').val();
		var PNIC = $('#PNIC').val();
		var phoneNo = $('#phoneNo').val();
		var email = $('#email').val();
		var address = $('#address').val();
		var password = $('#password').val();
		var PID = $('#PID').val();
		var pcode = $('#pcode').val();
		var PName = $('#PName').val();
		var PNIC = $('#PNIC').val();
		var phoneNo = $('#phoneNo').val();
		var email = $('#email').val();
		var address = $('#address').val();
		var password = $('#password').val();
		if(PID === "" || pcode === "" || PName === "" || PNIC === "" || phoneNo === "" || email === "" || address === "" || password === ""){
			return false;
		}else{
			return true;
		}
		return true;
	}

	function search(){
	$("#idTable").find("tr:gt(0)").remove();
		var searchID = $('#searchID').val();
		if(searchID === ""){
			alert("Please Enter ID")
		}else{
		$.ajax({
			url : 'http://localhost:8080/api/webresources/UserResources/User/' + searchID,
			method : 'GET',
			headers : {
				Accept : "application/json",
				"Content-Type" : "application/json"
			},
			success : function(data, textStatus, errorThrown) {
				var items = [];
				$.each(data,function(key, val) {
					var index = key + 1;
					items.push("<tr>");
					items.push("<td>" + index + "</td>");
					items.push("<td>" + val.PID + "</td>");
					items.push("<td>" + val.pcode + "</td>");
					items.push("<td>" + val.PName + "</td>");
					items.push("<td>" + val.PNIC + "</td>");
					items.push("<td>" + val.phoneNo + "</td>");
					items.push("<td>" + val.email + "</td>");
					items.push("<td>" + val.address + "</td>");
					items.push("<td>" + val.password + "</td>");
					items.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
					items.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
					items.push("</tr>");
				});
			$("<tbody/>", {
				html : items.join("")
			}).appendTo("#idTable");
		},
			error : function(jqXHR, textStatus, errorThrown) {
				alert("Ajax request fail");
			},
			timeout : 120000,
			});
		}
	}
	</script>


</body>
</html>