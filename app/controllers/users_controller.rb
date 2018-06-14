class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to edit_user_url
    else
      render :edit
    end
  end

  private 
  # test 
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :payment, :photo) 

  end

end

