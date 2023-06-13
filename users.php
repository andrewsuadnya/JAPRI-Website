<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
?>
<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="users">
      <header>
        <div class="content">
          <?php 
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
          <img src="php/images/<?php echo $row['img']; ?>" alt="">
          <div class="details">
            <span><?php echo $row['fname']. " " . $row['lname'] ?></span>
            <p><?php echo $row['status']; ?></p>
          </div>
        </div>
        <a href="php/logout.php?logout_id=<?php echo $row['unique_id']; ?>" class="logout">Logout</a>
      </header>
      <div class="search">
        <span class="text">Select an user to start chat</span>
        <input type="text" placeholder="Enter name to search...">
        <button><i class="fas fa-search"></i></button>
      </div>
      <div class="users-list">
  
      </div>
    </section>
  </div>




    <!--footer-->
    <footer>
            <div class="container">
                <div class="col-6">
                    <a href="home.html" class="icon">
                        <i class="fa-solid fa-house"></i>
                        <p>Home</p>
                    </a>
                </div>
                <div class="col-6">
                    <a href="print.html" class="icon">
                        <i class="fa-solid fa-print"></i>
                        <p>Print</p>
                    </a>
                </div>
                <div class="col-6">
                    <a href="users.php" class="icon">
                        <i class="fa-solid fa-comments"></i>
                        <p>ChatUs</p>
                    </a>
                </div>
                <div class="col-6">
                    <a href="rating.html" class="icon">
                        <i class="fa-solid fa-star"></i>
                        <p>Rating</p>
                    </a>
                </div>
                <div class="col-6">
                    <a href="AboutUs.html" class="icon">
                        <i class="fa-solid fa-users"></i>
                        <p>AboutUs</p>
                    </a>
                </div>
            </div>
    </footer>
  <script src="javascript/users.js"></script>
  <img src="img/logo10.png" alt="logo" class="logo">
</body>
</html>
