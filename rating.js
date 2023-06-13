function submitRating() {
  // Mengambil nilai rating dan review dari formulir
  var rating = document.querySelector('input[name="rating"]:checked');
  var review = document.getElementById('review');

  // Memeriksa apakah nilai rating dan review telah diberikan
  if (rating && review.value !== "") {
      // Mengirim data rating dan review menggunakan AJAX
      var xhr = new XMLHttpRequest();
      xhr.open('POST', 'php/rating.php', true);
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
      xhr.onreadystatechange = function() {
          if (xhr.readyState === 4 && xhr.status === 200) {
              // Menampilkan pesan sukses setelah menyimpan data
              alert("Data berhasil disimpan.");
              // Mengosongkan nilai rating dan review
              rating.checked = false;
              review.value = "";
          }
      };
      xhr.send('rating=' + rating.value + '&review=' + encodeURIComponent(review.value));
  } else {
      alert("Silakan berikan rating dan ulasan Anda terlebih dahulu!");
  }
}
