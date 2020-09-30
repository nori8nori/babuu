class ProfilesController < ApplicationController

  #before_action :authenticate_user! , only: [:new] # ログインしてないユーザーはnewアクション時にログイン画面に遷移
  before_action :find_profile, only: [:show, :edit, :update]


  def show
  end

  def edit
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :history, :purpose , :image).merge(user_id: current_user.id)
  end

end
