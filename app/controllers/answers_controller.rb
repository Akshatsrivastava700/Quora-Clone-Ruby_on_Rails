class AnswersController < ApplicationController
  def new
    id        = params[:ques_id].to_i
    @question = Question.find(id)
    @answers  = Answer.where(question_id: id)
    @comments = Comment.all
  end

  #def create
  #  if current_user
  #    @answer = Answer.new
  #    render 'answers/create'
  #  else
  #    redirect_to root_path
  #  end
  #end

  def insert
    if params[:answer][:ans] != ""
       params[:answer][:question_id] = params[:answer][:question_id].to_i
       @answer = Answer.new(params.require(:answer).permit(:ans, :question_id))
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
