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
            <h5 class="font-weight-bold text-muted">GAME</h5>
          </li>
          <li class="nav-item active  ">
            <a class="nav-link" href="javascript:void(0)">
              <i class="material-icons">dashboard</i>
              <p>Postingan Anda</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="<?php echo base_url('admin/add-game')?>">
              <i class="material-icons">create</i>
              <p>Buat Postingan</p>
            </a>
          </li>
        </ul>
        <hr class="bg-secondary" width="90%">
        <ul class="nav mb-5">
          <li class="nav-item text-center ">
            <h5 class="font-weight-bold text-muted">GAME NEWS</h5>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url('admin/landing')?>">
              <i class="material-icons">dashboard</i>
              <p>Postingan Anda</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="javascript:void(0)">
              <i class="material-icons">create</i>
              <p>Buat Postingan</p>
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
            if($this->session->flashdata('flash') == "dihapus") { ?>
        <div class="row">
          <div class="col-lg-12 col md 12">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              Data Berhasil Dihapus
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
          </div>
          </div>
        </div>
            <?php } else if($this->session->flashdata('flash') == "diedit") { ?>
              <div class="row">
          <div class="col-lg-12 col md 12">
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
              Data Berhasil Diubah
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
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Postingan Game</h4>
                  <p class="card-category">Berikut Postingan Game yang terdapat pada Inesa, Gunakanlah dengan Bijak.</p>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>#</th>
                      <th>Judul</th>
                      <th>Author</th>
                      <th>Tanggal Upload</th>
                      <th>Tanggal Edit</th>
                      <th>Aksi</th>
                    </thead>
                    <tbody>
                    <?php 
                      $no = 1;
                      foreach($game as $g) {
                    ?>
                      <tr>
                        <td><?php echo $no++ ?></td>
                        <td><?php echo $g->judul ?></td>
                        <td><?php echo $g->author ?></td>
                        <td><?php echo $g->tanggal_masuk ?></td>
                        <?php 
                          if($g->tanggal_edit == NULL) { ?>
                        <td class="font-italic">Belum Pernah Diedit</td>
                          <?php } else { ?>
                        <td><?php echo $g->tanggal_edit ?></td>
                          <?php } ?>
                        <td>
                          <a href="<?php echo base_url('game/landing/lihat-data-game/'.$g->id_game)?>"><span class="badge badge-primary">Lihat</span><br></a>
                          <?php if($g->id_admin == $id_admin) { ?>
                          <a href="<?php echo base_url();?>game/ubahGame/<?= $g->id_game ?>"><span class="badge badge-warning">Ubah</span><br></a>
                          <a href="#" onclick="popUpAlert('<?php echo base_url();?>game/hapusGame/<?= $g->id_game ?>');"><span class="badge badge-danger">Hapus</span></a>
                          <?php } ?> 
                        </td>
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
