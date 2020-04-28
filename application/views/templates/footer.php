    <!-- footer Inesa -->
    <section>
        <footer class="page-footer font-small blue pt-4">
            <div class="container-fluid text-center text-md-left">
                <hr class="clearfix">
                <div class="container">
                    <div class="row">
                    <div class="col-md-6 mt-md-0 mt-3 mr-6">
                    <h4 class="text-uppercase" style="letter-spacing: 0.4rem;">Inesa</h4>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto dignissimos soluta, sed similique facilis, quis qui est dicta quaerat vitae recusandae laboriosam aperiam aut, et inventore. Quasi hic natus in?</p>
                    </div>

                    <div class="col-md-3 mb-md-0 mb-3">
                    <h5 class="text-uppercase">Links</h5>

                    <ul class="list-unstyled">
                        <li><a href="#">Link 1</a></li>
                        <li><a href="#">Link 2</a></li>
                        <li><a href="#">Link 3</a></li>
                        <li><a href="#">Link 4</a></li>
                    </ul>
                    </div>

                    <div class="col-md-3 mb-md-0 mb-3">
                    <h5 class="text-uppercase">Social Media</h5>

                    <ul class="list-unstyled">
                        <li><a href="#">Link 1</a></li>
                        <li><a href="#">Link 2</a></li>
                        <li><a href="#">Link 3</a></li>
                        <li><a href="#">Link 4</a></li>
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
<script
  src="https://code.jquery.com/jquery-3.5.0.min.js"
  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
  crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<script>
    
    x = document.querySelectorAll(".deskripsi");
    for (i = 0; i < x.length; i++) {
        var par = x[i].innerHTML;
        var truncated = par.substr(0, 200) + "...";
        document.querySelectorAll(".deskripsi")[i].innerHTML = truncated;
    }
</script>

</html>