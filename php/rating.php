<?php
// Konfigurasi koneksi database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rating";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Memeriksa apakah ada data yang dikirim melalui metode POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Memeriksa apakah rating dan review telah diberikan
    if (isset($_POST["rating"]) && isset($_POST["review"])) {
        $rating = $_POST["rating"];
        $review = $_POST["review"];

        // Menyiapkan pernyataan SQL untuk menyimpan data rating dan review ke dalam tabel
        $sql = "INSERT INTO ratings (rating, review) VALUES ('$rating', '$review')";

        if ($conn->query($sql) === TRUE) {
            // Mengosongkan nilai rating dan review setelah berhasil menyimpan data
            $rating = "";
            $review = "";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Silakan berikan rating dan ulasan Anda terlebih dahulu!";
    }
}

// Menutup koneksi
$conn->close();
?>
