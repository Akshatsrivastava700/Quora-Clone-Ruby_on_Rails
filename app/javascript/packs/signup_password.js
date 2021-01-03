var input = document.getElementById('user_password');
input.addEventListener('keyup',function(){
var signup_btn = document.getElementById('signup-btn');
if (input.value.length >= 6){
  signup_btn.style.opacity = '1';
}
else{
  signup_btn.style.opacity = '0.5';
}
});
