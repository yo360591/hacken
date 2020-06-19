class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
    
  end
  
  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end
  
  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end
end
