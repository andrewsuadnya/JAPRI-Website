function logout() {
    // Mengambil unique_id dari elemen yang ditautkan
    var unique_id = "<?php echo $row['unique_id']; ?>";
    
    // Membangun URL logout
    var logoutUrl = "php/logout.php?logout_id=" + unique_id;
    
    // Mengarahkan pengguna ke halaman logout
    window.location.href = logoutUrl;
}