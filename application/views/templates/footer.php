    <!-- footer Inesa -->
    <section>
        <footer class="page-footer font-small blue pt-4">
            <div class="container-fluid text-center text-md-left">
                <hr class="clearfix">
                <div class="container">
                    <div class="row">
                    <div class="col-md-6 mt-md-0 mt-3 mr-6">
                    <h4 class="text-uppercase" style="letter-spacing: 0.4rem;">Inesa</h4>
                    <p>INESA (Indonesian E-Sports Association Balikpapan) merupakan sistem informasi ataupun wadah bagi para penggelut dalam bidang game berbasis E-Sport untuk menyalurkan hobi serta bakat dan minat. Dan juga menyediakan sejumlah informasi terupdate,teraktual,terpercaya seputar dunia game</p>
                    </div>

                    <div class="col-md-3 mb-md-0 mb-3">
                    </div>

                    <div class="col-md-3 mb-md-0 mb-3">
                    <h5 class="text-uppercase">Social Media</h5>

                    <ul class="list-unstyled">
                        <li><a href="https://www.instagram.com/inesa_balikpapan/" target="_blank">IG: @inesa_balikpapan</a></li>
                        <li><a href="https://www.facebook.com/INESA-Balikpapan-115467313477599/" target="_blank">FB: INESA Balikpapan</a></li>
                    </ul>
                    </div>
                </div>
                </div>
            
            </div>

            <hr class="clearfix">

            <div class="text-center py-3">&COPY; 2020 Copyright: Inesa Team</div>

            <hr class="clearfix">
        </footer>
    </section>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script>
    
    x = document.querySelectorAll(".deskripsi");
    for (i = 0; i < x.length; i++) {
        var par = x[i].innerHTML;
        var truncated = par.substr(0, 200) + "...";
        document.querySelectorAll(".deskripsi")[i].innerHTML = truncated;
    }
</script>

<script>
$(document).ready(function(){
  $(".content").slice(0, 4).show();
  $("#load_data").on("click", function(e){
    e.preventDefault();
    $(".content:hidden").slice(0, 4).show();
    if($(".content:hidden").length == 0) {
      $("#load_data").hide();
    }
  });
  
})
</script>

</html>