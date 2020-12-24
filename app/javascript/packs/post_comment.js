function postComment(){
    var comment_btn      = document.getElementById("comment-btn-"+cmt_id.toString());
    var comment_form     = document.getElementById("comment-box-"+cmt_id.toString());
    var comment_submit   = document.getElementById("comment-submit-"+cmt_id.toString()).children.item(0)
    comment_submit.value = "Submit"
    /*if(comment_form.style.display === 'block'){
        comment_form.style.display = 'block';
      }else {
        comment_form.style.display = 'none'
      }*/

    comment_btn.addEventListener('click', () =>{
      if(comment_form.style.display === 'none'){
          comment_form.style.display = 'block';
        }else {
          comment_form.style.display = 'none'
        }
  } );

}

postComment();
