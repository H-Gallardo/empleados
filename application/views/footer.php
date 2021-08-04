</div> <!-- /.container -->



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="../../dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="<?php echo base_url() ?>lib/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo base_url() ?>lib/jquery-ui/jquery-ui.min.js"></script>
<style>
  body {
    padding-top: 50px;
  }
  .starter-template {
    padding: 40px 15px;
    text-align: center;
  }
</style>
<script>

    function linkTo(link = null) {

        $("#container").empty();
        if (link != null) {
            $("#container").load(link);
            return;
        }
    }

    function formToObject(formData) {
      return JSON.parse(formToJson(formData));
    }

    function formToJson(formData) {
      var object = {};
      formData.forEach((value, key) => {
        if (!object.hasOwnProperty(key)) {
          object[key] = value;
          return;
        }
        if (!Array.isArray(object[key])) {
          object[key] = [object[key]];
        }
        object[key].push(value);
      });
      return JSON.stringify(object);
    }

</script>
</body>
</html>