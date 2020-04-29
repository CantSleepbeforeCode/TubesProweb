<div class="jumbotron jumbotron-fluid">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h1 class="font-weight-bold"><?= $dataGame->judul ?></h1>
            <div class="row justify-content-between">
                <div class="col">
                    <h5 class="font-weight-light font-italic mb-3"><?= $dataGame->developer ?></h5>
                </div>
                <div class="col text-right">
                <?php 
                if($dataGame->rating == 5) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 4.5) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star-half-alt" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 4) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 3.5) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star-half-alt" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 3) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 2.5) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star-half-alt" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                <?php } else if ($dataGame->rating == 2) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 1.5) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="fas fa-star-half-alt" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                <?php } else if ($dataGame->rating == 1) { ?>
                    <i class="fas fa-star" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 0.5) { ?>
                    <i class="fas fa-star-half-alt" style="color: orange;"></i>
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } else if ($dataGame->rating == 0) { ?>
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i> 
                    <i class="far fa-star" style="color: orange;"></i>
                <?php } ?>
                </div>
            </div>
            <div class="mb-3" style="display: inline-block; overflow: hidden; width: 100%;">
                <img src="<?= base_url($dataGame->foto); ?>" class="img-fluid" style="height:100%; width:100%; overflow:hidden; vertical-align: middle;" alt="">
            </div>
            <div class="text-justify" style="line-height:2rem;">
                <?= $dataGame->deskripsi ?>
            </div>
        </div>
    </div>
</div>  