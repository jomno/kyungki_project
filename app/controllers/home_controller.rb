class HomeController < ApplicationController
  def index
    #reset_session
    if user_signed_in?
      redirect_to "/home/users"
    else
    end
  end
  def register
    password = params[:password]
    if password == "password"
      session[:success] = true
      redirect_to "/home/users"
    else
      redirect_back(fallback_location: root_path)
    end
  end
  def users
    if params[:id]
      @users = User.where(id: City.find(params[:id]).user_ids).order(created_at: :DESC)
    else
      @users = User.all.order(created_at: :DESC)
    end
  end
  def locations
    @city_hash = City.exist_user
  end

  def posts
    @posts = Post.all.order(created_at: :DESC)
  end

  private
  def user_signed_in?
    if session[:success]==true
      return true
    else
      return false
    end
  end
end
