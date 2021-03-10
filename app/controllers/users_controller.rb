class UsersController < ApplicationController
  def show
    @profile = current_user.profile
  end

  def profile_edit
    @profile = current_user.profile
    @profile = current_user.build_profile if !@profile
  end

  def profile_update
    !current_user.profile ? current_user.build_profile(profile_params).save : current_user.profile.update(profile_params)
    flash[:success] = "プロフィールの更新に成功しました"
    redirect_to user_path(current_user)
  end

  private

  def profile_params
    params.require(:profile).permit(:nickname, :content, :gender, :birthday, :prefecture_id, :image)
  end
end
