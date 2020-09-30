class BabuusController < ApplicationController
  def index
    @tweets = Tweet.all.order("created_at DESC")
    @profiles = Profile.all.order("created_at DESC")
  end
end
