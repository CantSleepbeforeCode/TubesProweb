<div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="<?php echo base_url('/assets/img/sidebar-2.jpg')?>">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
          <img src="<?php echo base_url('assets/img/our-lovely-logo.png')?>" alt="" width="120">
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav mb-5">
          <li class="nav-item text-center ">
            <h5 class="font-weight-bold text-muted">TURNAMEN</h5>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="<?= base_url(); ?>admin/turnamen">
              <i class="material-icons">dashboard</i>
              <p>Lihat Turnamen</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="javascript:void(0)">
              <i class="material-icons">create</i>
              <p>Buat Turnamen</p>
            </a>
          </li>
        </ul>
        <hr class="bg-secondary" width="90%">
        <ul class="nav mb-5">
          <li class="nav-item text-center ">
            <h5 class="font-weight-bold text-muted">TIM</h5>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="<?= base_url(); ?>admin/turnamen/verifikasi-tim">
              <i class="material-icons">dashboard</i>
              <p>Verifikasi Tim</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav mb-5">
              <li class="nav-item dropdown">
                <a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    User
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="<?php echo base_url('admin/logout')?>"><i class="material-icons">meeting_room</i>Keluar</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
        <?php 
          if($this->session->flashdata('flash')):
            if($this->session->flashdata('flash') == "berhasil") { ?>
          <div class="row">
            <div class="col-lg-12 col md 12">
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                Turnamen berhasil ditambahkan!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
            </div>
          </div>
            <?php } else if($this->session->flashdata('flash') == "gagal") { ?>
            <div class="row">
            <div class="col-lg-12 col md 12">
              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Gagal Menambahkan Data. Kode Error: <?= $error ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
            </div>
          </div>
            <?php }
          endif; ?>
          <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="card">
                  <div class="card-header card-header-info">
                    <h4 class="card-title">Form Tambah Turnamen</h4>
                    <p class="card-category">Berikut Form untuk menambahkan Turnamen pada Inesa, Gunakanlah dengan Bijak.</p>
                  </div>
                  <div class="card-body table-responsive">
                    <form class="mb-5" action="<?php echo base_url();?>turnamen/AksiTambahData/<?= $id_admin ?>" method="POST" enctype="multipart/form-data">
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                        <label class="col-form-label">Judul</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="judul" type="text" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                        <label class="col-form-label">Penyelenggara</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="penyelenggara" type="text" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Platform</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <select name="platform" id="platform" class="custom-select">
                                <option value="PC" selected>PC</option>
                                <option value="Mobile">Mobile</option>
                            </select>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Slot Tim</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="slot" type="number" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Slot Peserta Per Tim</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="slot_peserta" type="number" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Deadline Pendaftaran</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="tgl_deadline" type="date" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Tanggal Mulai</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="tgl_mulai" type="date" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Tanggal Berakhir</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="tgl_berakhir" type="date" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Jam Mulai</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <input name="jam_mulai" type="time" class="form-control" required>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label class="col-form-label">Foto Sampul</label>
                        </div>
                        <div class="col-sm-8 col-md-8">
                            <div class="input-group mb-3">
                            <div class="custom-file">
                                <input name="gambar" type="file" id="gambar" required>
                                <label class="custom-file-label" for="gambar">Masukkan Foto Disini</label>
                            </div>
                            </div>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-2 col-md-2">
                            <label>Konten Anda</label>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-12 col-md-12">
                            <textarea name="content" id="content" class="mb-5"></textarea>
                        </div>
                        </div>
                        <div class="form-group row">
                        <div class="col-sm-12 col-md-12 text-center">
                            <input type="submit" class="btn btn-info" value="Buat Turnamen">
                        </div>
                        </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
