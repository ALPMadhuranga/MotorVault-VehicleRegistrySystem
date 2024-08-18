   <!-- Sidebar -->
   <ul class="navbar-nav bg-dark sidebar sidebar-dark accordion" id="accordionSidebar">

     <!-- Divider -->
     <hr class="sidebar-divider my-0">

     <!-- Nav Item - Dashboard -->
     <li class="nav-item active">
       <a class="nav-link" href="index.php">
         <i class="fas fa-fw fa-tachometer-alt"></i>
         <span>Dashboard</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider">

     <!-- Nav Item - Pages Collapse Menu -->
     <li class="nav-item">
       <a class="nav-link" href="vehical_info.php">
       <i class="fas fa-truck-monster"></i>
         <span>Vehicle Information</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="transfer_details.php">
       <i class="fas fa-exchange-alt"></i>
         <span>Transfer Details</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="repair_info.php">
       <i class="fas fa-tools"></i>
         <span>Repair Informations</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="disposal.php">
       <i class="fas fa-trash-alt"></i>
         <span>Disposal Details</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="age.php">
       <i class="far fa-calendar-alt"></i>
         <span>Age of each vehicles</span></a>
     </li>
     <li class="nav-item">
       <a class="nav-link" href="disposaled_vehical_info.php">
       <i class="fas fa-car-crash"></i>
         <span>Disposaled Vehicles</span></a>
     </li>

     <!-- Divider -->
     <hr class="sidebar-divider d-none d-md-block">

     <li class="nav-item">
       <a class="nav-link" href="reg.php">
       <i class="fas fa-users-cog"></i>
         <span>Admin Profile</span></a>
     </li>
     <!-- Sidebar Toggler (Sidebar) -->
     <div class="text-center d-none d-md-inline">
       <button class="rounded-circle border-0" id="sidebarToggle"></button>
     </div>

   </ul>
   <!-- End of Sidebar -->

   <!-- Content Wrapper -->
   <div id="content-wrapper" class="d-flex flex-column">

     <!-- Main Content -->
     <div id="content">

       <!-- Topbar -->
       <nav class="navbar navbar-expand navbar-light bg-dark topbar mb-4 static-top shadow">




         <!-- Topbar Navbar -->
         <ul class="navbar-nav ml-auto">

         <li class="nav-item dropdown no-arrow">
             <a class="nav-link dropdown-toggle" href="index.php" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <span class="d-none d-lg-inline text-gray-600 large">
                <h4 class="text-white text-center" style="font-weight: bold;">
                  VEHICLE REGISTRY SYSTEM <br>
                  (North Central Provincial Council)
                </h4>
               </span>
             </a>
           </li>



           <!-- Nav Item - User Information -->

           <li class="nav-item dropdown no-arrow">
             <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <span class="text-white mr-2 d-none d-lg-inline text-gray-600 small">
                 
                 <?php echo $_SESSION['username']; ?>
                 <i class="fas fa-sign-out-alt 3x text-white"></i>
               </span>
               
             </a>
             <!-- Dropdown - User Information -->
             <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
               <a class="dropdown-item" href="#">
               <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                 <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                 Logout
               </a>
             </div>
           </li>

         </ul>

       </nav>
       <!-- End of Topbar -->


       <!-- Scroll to Top Button-->
       <a class="scroll-to-top rounded" href="#page-top">
         <i class="fas fa-angle-up"></i>
       </a>


       <!-- Logout Modal-->
       <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
           <div class="modal-content">
             <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
               <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                 <span aria-hidden="true">×</span>
               </button>
             </div>
             <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
             <div class="modal-footer">
               <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>

               <form action="logout.php" method="POST">

                 <button type="submit" name="logout_btn" class="btn btn-primary">Logout</button>

               </form>


             </div>
           </div>
         </div>
       </div>