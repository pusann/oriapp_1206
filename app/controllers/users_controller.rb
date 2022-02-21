class UsersController < ApplicationController
  def edit
  
  end

   def update
    current_user.update(user_params)
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end

  private

  def user_params
    params.require(:user).parmit(:first_name,:last_name,:first_name_kana,:last_name_kana,:nickname,:sex_id,:age,:category_id)
  end
end
