<div class="jumbotron jumbotron-fluid">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="row mb-4">
                <div class="col-md-6">
                    <h1 class="font-weight-bold"><?= $dataTurnamen->judul ?></h1>
                    <div class="row justify-content-between">
                        <div class="col">
                            <h5 class="font-weight-light font-italic mb-3">Oleh: <?= $dataTurnamen->penyelenggara ?></h5>

                            <?php if($dataTurnamen->platform == "Mobile") { ?>
                            <p>Platform : <button class="btn btn-outline-dark"><i class="fa fa-tablet"></i> Mobile</button></p>
                            <?php } else { ?>
                            <p>Platform : <button class="btn btn-outline-dark"><i class="fa fa-desktop"></i> PC</button></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 offset-md-2 text-right">
                <?php
                $dateStarted = date_create($dataTurnamen->tanggal_pelaksanaan);
                $dateEnded = date_create($dataTurnamen->tanggal_berakhir);
                ?>
                    <small>Tanggal Pelaksanaan</small>
                    <h2 class="mb-2"><?= date_format($dateStarted, "d M")." - ".date_format($dateEnded, "d M") ?></h2>
                    <small>Tim Bermain</small>
                    <h2 class="mb-2"><?= $dataTurnamen->jumlah_pendaftar."/"."$dataTurnamen->jumlah_tim" ?></h2>
                </div>
            </div>
            <div class="mb-3" style="display: inline-block; overflow: hidden; width: 100%;">
                <img src="<?= base_url($dataTurnamen->foto_sampul); ?>" class="img-fluid" style="height:100%; width:100%; overflow:hidden; vertical-align: middle;" alt="">
            </div>
            <div class="text-justify" style="line-height:2rem;">
                <?= $dataTurnamen->deskripsi_lomba ?>
            </div>
            <hr>
            <?php if($dataTurnamen->jumlah_pendaftar != $dataTurnamen->jumlah_tim || !isset($berhasil)) { ?>
            <div class="text-center">
                <button class="btn btn-outline-dark btn-lg" type="button" data-toggle="collapse" data-target="#formDaftar" aria-expanded="false" aria-controls="formDaftar">Daftar Sekarang</button>
            </div>
            <div class="collapse mt-5" id="formDaftar">
                <div class="card card-body">
                    <?php if(isset($error)) { ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Terjadi Error</strong> <br>Berikut adalah kode errornya: <?= $error ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php } ?>
                    <form action="<?php echo base_url('landing/aksiDaftarGame/'.$dataTurnamen->id_turnamen); ?>" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Nama Tim</label>
                            <input type="text" class="form-control" id="namaTim" name="namaTim" required>
                        </div>
                        <?php
                        for($i = 1; $i <= $dataTurnamen->jumlah_anggota; $i++) { ?>
                        <div class="form-group">
                            <label>Anggota <?= $i ?></label>
                            <input type="text" class="form-control" id="anggota_<?= $i ?>" name="anggota_<?= $i ?>" required>
                        </div>
                        <?php } ?>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                <label>Nomor HP</label>
                                <input type="text" class="form-control" id="nohp" name="nohp" required>
                                </div>
                                <div class="col">
                                <label>Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Logo Tim</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="fileLogo" name="fileLogo" required>
                                <label class="custom-file-label" for="fileLogo">Pilih Foto</label>
                            </div>
                        </div>

                        <div class="text-center">
                            <input type="submit" class="btn btn-dark" value="Daftar Sekarang">
                        </div>
                    </form>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>  