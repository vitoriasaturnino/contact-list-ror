class UsersController < ApplicationController

  def new
    # variavel de instancia
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'User registered successfully'
      redirect_to root_url
    else
      render 'new'
    end

  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end

end