<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="<?php echo base_url('assets/css/mycss.css')?>"> 
</head>
<body>
<div class="wrapper">
    <div class="container">
        <h1 style="letter-spacing: 1rem; font-weight: 600; font-size:3rem;">INESA</h1>
        <form action="<?php echo base_url('login/aksiLogin'); ?>" method="POST" class="form">
            <input id="username" name="username" type="text" placeholder="Username" required>
            <input id="password" name="password" type="password" placeholder="Password" required>
            <button name="login" type="submit" id="login-button">Masuk</button>
        </form>
    </div>
        
    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</body>
<script
  src="https://code.jquery.com/jquery-3.5.0.min.js"
  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
  crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<?php if(isset($gagal)) {
    echo '
        <script>
        Swal.fire(
            "Login Gagal",
            "Periksa Username dan Password anda, lalu coba lagi.",
            "error"
        )
    </script>
    ';
} ?>

</html>