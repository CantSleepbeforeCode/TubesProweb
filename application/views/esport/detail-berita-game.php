<div class="jumbotron jumbotron-fluid">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h1 class="font-weight-bold"><?= $dataBerita->judul ?></h1>
            <div class="row justify-content-between">
                <div class="col">
                    <h5 class="font-weight-light font-italic mb-3"><?= $dataBerita->nama_game ?></h5>
                </div>
            </div>
            <div class="mb-3" style="display: inline-block; overflow: hidden; width: 100%;">
                <img src="<?= base_url($dataBerita->foto); ?>" class="img-fluid" style="height:100%; width:100%; overflow:hidden; vertical-align: middle;" alt="">
            </div>
            <div class="text-justify" style="line-height:2rem;">
                <?= $dataBerita->deskripsi ?>
            </div>
        </div>
    </div>
</div>  