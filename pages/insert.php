<?php
if (isset ( $_POST ['btnSubmit'] )) {
	$nip = $_POST ['nip'];
	$nama = $_POST ['nama'];
	$alamat = $_POST ['alamat'];
	$id_divisi = $_POST ['id_divisi'];
	$conn = mysqli_connect("localhost", "root", "", "perusahaan");
	if(!$conn){
		die(mysq1i_connect_error());
	}
	$sql = "INSERT INTO datakaryawan (nip, nama, alamat, id_divisi) 
			VALUES ($nip,'".$nama."','".$alamat."','".$id_divisi."')";
	mysqli_query($conn, $sql);
	$num = mysqli_affected_rows ($conn);
	if ($num > 0) {
		echo "Data Berhasil Disimpan";
		echo "<br>";
		echo "Website akan mengalihkan anda ke halaman data pekerja dalam 3 detik";
	} else {
		echo mysqli_error($conn);
	}
	mysqli_close($conn);
}

header('Refresh: 3; URL=tables.php');
?>