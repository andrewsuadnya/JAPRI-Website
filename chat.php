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
    <section class="chat-area">
      <header>
        <?php 
          $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
          $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
          if(mysqli_num_rows($sql) > 0){
            $row = mysqli_fetch_assoc($sql);
          }else{
            header("location: users.php");
          }
        ?>
        <a href="users.php" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <img src="php/images/<?php echo $row['img']; ?>" alt="">
        <div class="details">
          <span><?php echo $row['fname']. " " . $row['lname'] ?></span>
          <p><?php echo $row['status']; ?></p>
        </div>
      </header>
      <div class="chat-box">

      </div>
      <form action="#" class="typing-area">
        <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
        <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off">
        <button><i class="fab fa-telegram-plane"></i></button>
      </form>
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
  <script src="javascript/chat.js"></script>
  <img src="img/logo10.png" alt="logo" class="logo">
</body>
</html>
