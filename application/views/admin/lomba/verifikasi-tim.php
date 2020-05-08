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
          <li class="nav-item  ">
            <a class="nav-link" href="<?= base_url(); ?>admin/turnamen/tambah-turnamen">
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
          <li class="nav-item active ">
            <a class="nav-link" href="javascript:void(0)">
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
                Tim berhasil diverifikasi!
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
                  <div class="card-header card-header-success">
                    <h4 class="card-title">Verifikasi Tim</h4>
                    <p class="card-category">Berikut Tim yang mendaftar pada Turnamen di Inesa, Gunakanlah dengan Bijak.</p>
                  </div>
                  <div class="card-body table-responsive">
                    <table class="table table-hover">
                      <thead class="text-warning">
                        <th>#</th>
                        <th>Nama Tim</th>
                        <th>Ketua Tim</th>
                        <th>Turnamen</th>
                        <th>Nomor Handphone</th>
                        <th>Email</th>
                        <th>Aksi</th>
                      </thead>
                      <tbody>
                      <?php 
                        $no = 1;
                        foreach($tim as $t) { ?>
                        <tr>
                          <td><?php echo $no++ ?></td>
                          <td><?php echo $t->nama_tim ?></td>
                          <td><?php echo $t->nama_anggota_1 ?></td>
                          <td><?php echo $t->judul ?></td>
                          <td><?php echo $t->nohp ?></td>
                          <td><?php echo $t->email ?></td>
                          <?php if($t->id_admin == $id_admin) { ?>
                          <td><a href="<?php echo base_url();?>turnamen/verifikasiDataTim/<?= $t->id_tim ?>"><span class="badge badge-warning">Verifikasi</span></a></td>
                          <?php } else { ?>
                          <td>-</td>
                          <?php } ?>
                          
                        </tr>
                      <?php
                        }
                      ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
