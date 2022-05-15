
function getRow() {
	var table = document.getElementById('table');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("PID").value = this.cells[1].textContent;
			document.getElementById("Pcode").value = this.cells[2].textContent;
			document.getElementById("PName").value = this.cells[3].textContent;
			document.getElementById("PNIC").value = this.cells[4].textContent;
			document.getElementById("PhoneNo").value = this.cells[5].textContent;
			document.getElementById("Email").value = this.cells[6].textContent;
			document.getElementById("Address").value = this.cells[7].textContent;
			document.getElementById("Password").value = this.cells[8].textContent;
		};
	}
}

function getRowSearch() {
	var table = document.getElementById('idTable');
	for (var i = 0; i < table.rows.length; i++) {
		table.rows[i].onclick = function() {
			document.getElementById("PID").value = this.cells[1].textContent;
			document.getElementById("Pcode").value = this.cells[2].textContent;
			document.getElementById("PName").value = this.cells[3].textContent;
			document.getElementById("PNIC").value = this.cells[4].textContent;
			document.getElementById("PhoneNo").value = this.cells[5].textContent;
			document.getElementById("Email").value = this.cells[6].textContent;
			document.getElementById("Address").value = this.cells[7].textContent;
			document.getElementById("Password").value = this.cells[8].textContent;
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
	document.getElementById("Pcode").value = "";
	document.getElementById("PName").value = "";
	document.getElementById("PNIC").value = "";
	document.getElementById("PhoneNo").value = "";
	document.getElementById("Email").value = "";
	document.getElementById("Address").value = "";
	document.getElementById("Password").value = "";
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
				items.push("<td>" + val.Pcode + "</td>");
				items.push("<td>" + val.PName + "</td>");
				items.push("<td>" + val.PNIC + "</td>");
				items.push("<td>" + val.PhoneNo + "</td>");
				items.push("<td>" + val.Email + "</td>");
				items.push("<td>" + val.Address + "</td>");
				items.push("<td>" + val.Password + "</td>");
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
		"Pcode" : $('#Pcode').val(),
		"PName" : $('#PName').val(),
		"PNIC" : $('#PNIC').val(),
		"PhoneNo" : $('#PhoneNo').val(),
		"Email" : $('#Email').val(),
		"Address" : $('#Address').val(),
		"Password" : $('#Password').val(),
	});
}

function ValidInput(){
	var PID = $('#PID').val();
	var Pcode = $('#Pcode').val();
	var PName = $('#PName').val();
	var PNIC = $('#PNIC').val();
	var PhoneNo = $('#PhoneNo').val();
	var Email = $('#Email').val();
	var Address = $('#Address').val();
	var Password = $('#Password').val();
	var PID = $('#PID').val();
	var Pcode = $('#Pcode').val();
	var PName = $('#PName').val();
	var PNIC = $('#PNIC').val();
	var PhoneNo = $('#PhoneNo').val();
	var Email = $('#Email').val();
	var Address = $('#Address').val();
	var Password = $('#Password').val();
	if(PID === "" || Pcode === "" || PName === "" || PNIC === "" || PhoneNo === "" || Email === "" || Address === "" || Password === ""){
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
				items.push("<td>" + val.Pcode + "</td>");
				items.push("<td>" + val.PName + "</td>");
				items.push("<td>" + val.PNIC + "</td>");
				items.push("<td>" + val.PhoneNo + "</td>");
				items.push("<td>" + val.Email + "</td>");
				items.push("<td>" + val.Address + "</td>");
				items.push("<td>" + val.Password + "</td>");
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