const returnBtn = document.getElementById("return");

if (document.referrer) {
  returnBtn.href = document.referrer;
} else {
  returnBtn.href = "../"; // fallback
}