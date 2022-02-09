class ApplicationController < ActionController::Base
  def show
    @user = User.find(params[:id])
  end
  
  def new
  end
end
