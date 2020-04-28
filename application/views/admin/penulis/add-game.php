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
          <li class="nav-item ">
            <a class="nav-link" href="<?php echo base_url('admin/landing')?>">
              <i class="material-icons">dashboard</i>
              <p>Postingan Anda</p>
            </a>
          </li>
          <li class="nav-item active  ">
            <a class="nav-link" href="javascript:void(0)">
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
            <ul class="navbar-nav">
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
        <div class="row">
            <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title"> Buat Postingan Game</h4>
                  <p class="card-category">Tambahkan Game menarik di Inesa.</p>
                </div>
                <div class="card-body table-responsive">
                <?php if(isset($status)) { 
                  if($status == "ok") { ?>
                    <div class="alert alert-success">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="material-icons">close</i>
                      </button>
                      <span>
                        <b><i class="material-icons">thumb_up_alt</i> Berhasil! </b><br> Postingan Berhasil Dibuat</span>
                    </div>
                  <?php } else if($status == "error") { ?>
                    <div class="alert alert-danger">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <i class="material-icons">close</i>
                      </button>
                      <span>
                        <b> <i class="material-icons" style="color:white;">error_outline</i> Terjadi Kesalahan! </b><br> Terjadi Kesalahan saat mengupload gambar. Code Error: <?php echo $error ?></span>
                    </div>
                  <?php } ?>
                <?php } ?>
                  
                  <form class="mb-5" action="<?php echo base_url('admin/landing/aksi-tambah-game'); ?>" method="POST" enctype="multipart/form-data">
                    <div class="form-group row">
                      <div class="col-sm-2 col-md-2">
                      <label class="col-form-label">Nama</label>
                      </div>
                      <div class="col-sm-8 col-md-8">
                        <input name="nama" type="text" class="form-control" required>
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-2 col-md-2">
                        <label class="col-form-label">Genre</label>
                      </div>
                      <div class="col-sm-8 col-md-8">
                        <input name="genre" type="text" class="form-control" required>
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-2 col-md-2">
                        <label class="col-form-label">Rating</label>
                      </div>
                      <div class="col-sm-8 col-md-8">
                        <input name="rating" id="rating" type="range" class="form-control-range" value="0" min="0" max="5" step="0.5" data-toggle="tooltip" data-placement="top" title="0" onchange="tooltipRange();">
                        <small class="form-text text-muted">
                          Beri nilai dari 1 sampai 5.
                        </small>
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-2 col-md-2">
                        <label class="col-form-label">Gambar</label>
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
                        <input type="submit" class="btn btn-success" value="Posting Game">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
        function tooltipRange() {
          var tooltip = document.getElementById('rating');
          var val = document.getElementById('rating').value;
          tooltip.title = val;
        }
      </script>
