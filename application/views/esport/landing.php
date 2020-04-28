  <!-- header Inesa -->
  <section class="my-header mb-5">
    <div class="header-wrapper">
      <div class="img-background" style="background-image: url(<?php echo base_url('assets/img/bg-header.jpg')?>)"></div>
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col center" style="font-weight: 500; letter-spacing: 0.5rem;">
            <!-- <img class="logo-header" src="<?php echo base_url('assets/img/our-lovely-logo.png')?>" alt="Inesa's Logo"> -->
            <h1 style="font-size: 5rem">WELCOME TO INESA</h1>
          </div>
        </div>
        <div class="row">
          <div class="col" style="text-align: right;">
            <a href="#game" class="button btn-decoration">GAME</a>
          </div>
          <div class="col" style="text-align: center;">
            <a href="#news" class="button btn-decoration">GAME NEWS</a>
          </div>
          <div class="col" style="text-align: left;">
            <a href="#" class="button btn-decoration">LOMBA</a>
          </div>
        </div>
        <div class="row">
          <div class="col md 12">
            <hr class="" width="60%">
          </div>
        </div>
          <div class="col-md-5 center" style="text-align: center;">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Masukin Body Disini -->
  <section id="introduction">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <img src="" alt="">
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
      </div>
    </div>
  </section>
  
  <section id="game" class="mb-5">
    <div class="container">
      <div class="row">
        <div class="col">
          <h3 class="text-center">GAME MINGGU INI</h3>
          <hr>
          <!-- disini -->
          <?php 
            if(!empty($dataRating5)) { 
              $isFirst = TRUE;
          ?>
          <div class="row">
            <div class="col">
              <div id="carouselGamePrimary" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <?php 
                foreach($dataRating5 as $data) {
                  if($isFirst) { ?>
                  <div class="carousel-item active">
                  <?php 
                  $isFirst = FALSE;
                  } else { ?>
                  <div class="carousel-item">
                  <?php } ?>
                    <div class="card">
                      <a href="<?= base_url("landing/detailGame/".$data->id_game) ?>">
                        <img class="card-img-top" src="<?= base_url().$data->foto; ?>" alt="Card image cap">
                      </a>
                      <div class="card-body">
                        <p class="font-weight-normal text-break" style="margin-bottom:0;"><?= $data->judul ?></p>
                        <p class="text-break" style="font-size:0.8rem; margin:0;"><?= $data->developer ?></p>
                        <div class="font-weight-light text-muted text-break deskripsi" style="font-size:0.8rem; margin:0;">
                          <?= $data->deskripsi ?>
                        </div>
                        <i class="fas fa-star" style="color: orange;"></i>
                        <i class="fas fa-star" style="color: orange;"></i>
                        <i class="fas fa-star" style="color: orange;"></i>
                        <i class="fas fa-star" style="color: orange;"></i>
                        <i class="fas fa-star" style="color: orange;"></i>
                      </div>
                    </div>
                  </div>
                <?php } ?>
                </div>
                <a class="carousel-control-prev" href="#carouselGamePrimary" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselGamePrimary" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>
          </div>
          <?php  }
          ?>
          <?php 
            if(!empty($dataRating)) { 
              $no = 0;
              $isFirst = TRUE;
          ?>
          <div class="row mt-3">
            <div class="col">
              <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <?php foreach($dataRating as $data) {
                  if($no == 0) {
                    if($isFirst) { ?>
                    <div class="carousel-item active">
                      <div class="row">
                    <?php } else { ?>
                    <div class="carousel-item">
                      <div class="row">
                    <?php }
                  } ?>
                        <div class="col-md-3">
                          <div class="card">
                            <a href="<?= base_url("landing/detailGame/".$data->id_game) ?>">
                              <img class="card-img-top" src="<?= base_url().$data->foto; ?>" alt="Card image cap">
                            </a>
                            <div class="card-body">
                              <p class="font-weight-normal text-break" style="margin-bottom:0;"><?= $data->judul ?></p>
                              <p class="font-weight-light text-muted text-break" style="font-size:0.8rem; margin:0;"><?= $data->developer ?></p>
                              <div class="font-weight-light text-muted text-break deskripsi" style="font-size:0.8rem; margin:0;">
                                <?= $data->deskripsi ?>
                              </div>
                              <?php 
                                if($data->rating == 5) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 4.5) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star-half-alt" style="color: orange;"></i>
                                <?php } else if ($data->rating == 4) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 3.5) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star-half-alt" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 3) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 2.5) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star-half-alt" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                                <?php } else if ($data->rating == 2) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 1.5) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="fas fa-star-half-alt" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                                <?php } else if ($data->rating == 1) { ?>
                              <i class="fas fa-star" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 0.5) { ?>
                              <i class="fas fa-star-half-alt" style="color: orange;"></i>
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } else if ($data->rating == 0) { ?>
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i> 
                              <i class="far fa-star" style="color: orange;"></i>
                                <?php } ?>
                            </div>
                          </div>
                        </div>
                  <?php if($no == 3) { ?>
                      </div>
                    </div>
                    <?php $no = 0;
                  }
                  ?>
                  </div>
                <?php } ?>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>
          </div>
          <?php  }
          ?>
        </div>
      </div>
    </div>
  </section>

  <section id="news">
    <div class="container">
      <h3 class="text-center">Mading Games</h3>
      <hr class="clearfix">
      <div class="row">
        <div class="col"></div>
      </div>
    </div>
  </section>

  <section id="lomba">
    <div class="container">
      <h3 class="text-center">Turnamen Inesia</h3>
      <hr class="clearfix">
    </div>
  </section>
