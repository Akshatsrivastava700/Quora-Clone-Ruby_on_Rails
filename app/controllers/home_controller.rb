class HomeController < ApplicationController
  def index
    if current_user
      @user = User.all
    else
      redirect_to new_user_session_path
    end
  end
end
