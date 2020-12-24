function postAnswer(){
    var ans_btn      = document.getElementById("answer-btn");
    var ans_form     = document.getElementById("post-answer-form");
    var ans_submit   = document.getElementById("ans-submit").children.item(0)

    ans_submit.value = "Submit"
    if(ans_form.style.display === 'none'){
        ans_form.style.display = 'block';
      }else {
        ans_form.style.display = 'none'
      }

    ans_btn.addEventListener('click', () =>{
      if(ans_form.style.display === 'none'){
          ans_form.style.display = 'block';
        }else {
          ans_form.style.display = 'none'
        }
  } );
}

postAnswer();
