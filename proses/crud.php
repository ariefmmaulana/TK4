<?php
    require 'panggil.php';

    /*
    // proses tambah
    if(!empty($_GET['aksi'] == 'tambah'))
    {
        $nama = strip_tags($_POST['nama']);
        $telepon = strip_tags($_POST['telepon']);
        $email = strip_tags($_POST['email']);
        $alamat = strip_tags($_POST['alamat']);
        $user = strip_tags($_POST['user']);
        $pass = strip_tags($_POST['pass']);
        
        $tabel = 'tbl_user';
        # proses insert
        $data[] = array(
            'username'		=>$user,
            'password'		=>md5($pass),
            'nama_pengguna'	=>$nama,
            'telepon'		=>$telepon,
            'email'			=>$email,
            'alamat'		=>$alamat
        );
        $proses->tambah_data($tabel,$data);
        echo '<script>alert("Tambah Data Berhasil");window.location="../index.php"</script>';
    }

    // proses edit
	if(!empty($_GET['aksi'] == 'edit'))
	{
		$nama = strip_tags($_POST['nama']);
		$telepon = strip_tags($_POST['telepon']);
		$email = strip_tags($_POST['email']);
		$alamat = strip_tags($_POST['alamat']);
		$user = strip_tags($_POST['user']);
		$pass = strip_tags($_POST['pass']);
		
        // jika password tidak diisi
        if($pass == '')
        {
            $data = array(
                'username'		=>$user,
                'nama_pengguna'	=>$nama,
                'telepon'		=>$telepon,
                'email'			=>$email,
                'alamat'		=>$alamat
            );
        }else{

            $data = array(
                'username'		=>$user,
                'password'		=>md5($pass),
                'nama_pengguna'	=>$nama,
                'telepon'		=>$telepon,
                'email'			=>$email,
                'alamat'		=>$alamat
            );
        }
        $tabel = 'tbl_user';
        $where = 'id_login';
        $id = strip_tags($_POST['id_login']);
        $proses->edit_data($tabel,$data,$where,$id);
        echo '<script>alert("Edit Data Berhasil");window.location="../index.php"</script>';
    }
    
    // hapus data
    if(!empty($_GET['aksi'] == 'hapus'))
    {
        $tabel = 'tbl_user';
        $where = 'id_login';
        $id = strip_tags($_GET['hapusid']);
        $proses->hapus_data($tabel,$where,$id);
        echo '<script>alert("Hapus Data Berhasil");window.location="../index.php"</script>';
    }
    */

    // proses tambah barang
    if(!empty($_GET['aksi'] == 'tambahBarang'))
    {
        $nama = strip_tags($_POST['nama_barang']);
        $keterangan = strip_tags($_POST['keterangan_barang']);
        $satuan = strip_tags($_POST['satuan_barang']);
        $idPengguna = strip_tags($_POST['id_pengguna']);
        // nama tabelnya
        $tabel = 'barang';
        # proses insert
        $data[] = array(
            'NamaBarang'	=>$nama,
            'Keterangan'		=>$keterangan,
            'satuan'			=>$satuan,
            'IdPengguna'		=>$idPengguna
        );
        // print_r($proses);
        $proses->tambah_data_barang($tabel,$data);
        
        echo '<script>alert("Tambah Data Berhasil");window.location="../index.php"</script>';
    }    

    // hapus data barang
    if(!empty($_GET['aksi'] == 'hapusBarang'))
    {
        $tabel = 'barang';
        $where = 'IdBarang';
        $id = strip_tags($_GET['IdBarang']);
        $proses->hapus_data_Barang($tabel,$where,$id);
        echo '<script>alert("Hapus Data Berhasil");window.location="../index.php"</script>';
    }
    

    // proses edit data barang
	if(!empty($_GET['aksi'] == 'editBarang'))
	{
		$nama_barang = strip_tags($_POST['NamaBarang']);
		$keterangan= strip_tags($_POST['Keterangan']);
		$satuan = strip_tags($_POST['satuan']);
		
        $data = array(
            'NamaBarang'	=>$nama_barang,
            'Keterangan'	=>$keterangan,
            'satuan'		=>$satuan
        );

        $tabel = 'barang';
        $where = 'IdBarang';
        $id = strip_tags($_POST['IdBarang']);
        $proses->edit_data_barang($tabel,$data,$where,$id);
        echo '<script>alert("Edit Data Berhasil");window.location="../index.php"</script>';
    }    

    // login
    if(!empty($_GET['aksi'] == 'login'))
    {   
        // validasi text untuk filter karakter khusus dengan fungsi strip_tags()
        $user = strip_tags($_POST['user']);
        $pass = strip_tags($_POST['pass']);
        // panggil fungsi proses_login() yang ada di class prosesCrud()
        $result = $proses->proses_login($user,$pass);
        if($result == 'gagal')
        {
            echo "<script>window.location='../login.php?get=gagal';</script>";
        }else{
            // status yang diberikan 
            session_start();
            $_SESSION['ADMIN'] = $result;
            // status yang diberikan 
            // var_dump($result);
            echo "<script>window.location='../index.php';</script>";
        }
    }
?>