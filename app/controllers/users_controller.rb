class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private 

  def user_params
    params.require(:user).permit(:fristname, :lastname, :email, :payment) 
  end
end

