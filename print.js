var count1 = 0;
function tambah1() {
  count1++;
  document.getElementById("count1").innerHTML = count1;
}

function kurang1(){
    count1--;
    document.getElementById("count1").innerHTML = count1;
}
var count2 = 0;
function tambah2() {
  count2++;
  document.getElementById("count2").innerHTML = count2;
}

function kurang2(){
    count2--;
    document.getElementById("count2").innerHTML = count2;
}

var count3 = 0;
function tambah3() {
  count3++;
  document.getElementById("count3").innerHTML = count3;
}

function kurang3(){
    count3--;
    document.getElementById("count3").innerHTML = count3;
}

document.getElementById('logout-btn').addEventListener('click', function() {
  localStorage.removeItem('isLoggedIn');
  window.location.href = 'login.php'; // Ganti dengan halaman login yang sesuai
});