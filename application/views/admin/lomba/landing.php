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
            <a class="nav-link" href="<?php echo base_url('admin/news')?>">
              <i class="material-icons">dashboard</i>
              <p>Postingan Anda</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="<?php echo base_url('admin/add-news')?>">
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
        </div>
      </div>
