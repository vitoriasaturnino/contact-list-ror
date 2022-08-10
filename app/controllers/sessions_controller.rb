class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sing_in(user)
      redirect_to user_path(user)
   else
    flash.now[:danger] = 'Invalid email or password'
    render 'new'
   end
  end

  def destroy
    sing_out
    flash[:success] = 'logout successfully'
    redirect_to log_in_path
  end

end
