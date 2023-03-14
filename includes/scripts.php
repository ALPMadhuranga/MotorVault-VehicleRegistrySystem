<!-- Bootstrap core JavaScript-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>


<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>

<script src="js/sweetalert.min.js"></script>

<script>
$(document).ready(function() {
    $('#myTable').DataTable( {
        dom: 'lBfrtip',
        buttons: [
            'excel'
        ],
        "lengthMenu" : [ [5, 10, 25, 50, -1], [5, 10, 25, 50, "All"] ]
    });
} );
</script>

<?php
if (isset($_SESSION['status']) && $_SESSION['status'] != '') {
?>
  <script>
    swal({
      title: "<?php echo $_SESSION['status']; ?>",
      text: "You clicked the button!",
      icon: "<?php echo $_SESSION['status_code']; ?>",
      button: "Welcome!",
    });
  </script>
<?php
  unset($_SESSION['status']);
}

if (isset($_SESSION['status_02']) && $_SESSION['status_02'] != '') {
?>
  <script>
    swal({
      title: "<?php echo $_SESSION['status_02']; ?>",
      text: "You clicked the button!",
      icon: "<?php echo $_SESSION['status_code']; ?>",
      button: "OOPS!",
    });
  </script>
<?php
  unset($_SESSION['status_02']);
}
?>
