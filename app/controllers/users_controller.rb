class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password,:password_confirmation)
    @user = User.new(user_params)

    if @user.save
     flash[:success] = "Tu es bien inscrit."
     redirect_to "/"

    else
      render 'new'

    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end

