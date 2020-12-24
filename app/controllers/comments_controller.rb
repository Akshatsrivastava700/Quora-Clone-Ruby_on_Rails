class CommentsController < ApplicationController
  def insertComment
    if params[:comment][:com] != ""
       params[:comment][:answer_id] = params[:comment][:answer_id].to_i
       params[:comment][:user_id]   = params[:comment][:user_id].to_i
       @comment = Comment.new(params.require(:comment).permit(:com, :answer_id, :user_id))
       if @comment.save
         redirect_to new_answer_path(:ques_id => params[:comment][:ques_id].to_i)
       else
        redirect_to root_path
       end
    else
      redirect_to new_answer_path(:ques_id => params[:comment][:ques_id].to_i)
    end
  end
end
