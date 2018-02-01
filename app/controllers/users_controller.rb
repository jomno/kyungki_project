class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      cookies[:status] = "success"
      redirect_to "/users", notice: "선거인단에 등록되었습니다."
    else
      redirect_to "/users/new"
    end
  end

  def index
    if cookies[:status] == "success"
      @msg = "포럼 가족이 되심을 축하드립니다."
    else
      redirect_to "/users/new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:district_id, :address, :phone, :birth)
  end
end
