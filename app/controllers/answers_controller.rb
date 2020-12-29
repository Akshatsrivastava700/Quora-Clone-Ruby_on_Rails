class AnswersController < ApplicationController
  def new
    id         = params[:ques_id].to_i
    @question  = Question.find(id)
    @answers   = Answer.where(question_id: id)
    @comments  = Comment.all
    @votes     = Vote.where(question_id: id)
    @vote_hash = Hash[@answers.ids.to_a.uniq.collect { |item| [item, 0] } ]
    for vote_ans in @answers.ids.to_a
      @vote_hash["#{vote_ans}"] = @votes.where(answer_id: vote_ans).count
    end
  end

  def insert
    if params[:answer][:ans] != ""
       params[:answer][:question_id] = params[:answer][:question_id].to_i
       params[:answer][:user_id] = current_user.id
       @answer = Answer.new(params.require(:answer).permit(:ans, :question_id, :user_id))
       if @answer.save
         redirect_to new_answer_path(:ques_id => params[:answer][:question_id])
       else
        redirect_to root_path
       end
    else
      redirect_to new_answer_path(:ques_id => params[:answer][:question_id])
    end
  end
end
