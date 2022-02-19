class ApplicationController < ActionController::Base
  def show
    @user = User.find(params[:id])
  end
  
  def new
  end
  
  include SessionsHelper
  
  private
  
    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in"
        redirect_to login_url
      end
    end
end
