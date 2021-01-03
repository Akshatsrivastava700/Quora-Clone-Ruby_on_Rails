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

var login_input = document.getElementById('login_user_password');
login_input.addEventListener('keyup',function(){
var signup_btn = document.getElementById('login-btn');
if (login_input.value.length >= 6){
  signup_btn.style.opacity = '1';
}
else{
  signup_btn.style.opacity = '0.5';
}
});
