class TweetsController < ApplicationController

  before_action :find_tweet, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :update
    end
  end

  def destroy
    if @tweet.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, images: []).merge(user_id: current_user.id)
  end

  def find_tweet
    @tweet = Tweet.find(params[:id])
  end

end
