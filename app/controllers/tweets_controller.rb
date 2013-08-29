class TweetsController < ApplicationController

  # before_filter :get_tweet, only: [:edit, :update, :destroy]
  # before_filter :check_auth, only: [:edit, :update, :destroy]

  before_filter :get_zombie

  def index
    # if params[:name]
    #   @zombie = Zombie.where(name: params[:name]).first
    #   @tweets = @zombie.tweets
    # else
    #   @tweets = Tweet.all
    # end

    @tweets = @zombie.tweets
  end

  def show

    @tweet = @zombie.tweets.find(params[:id])


    # @tweet = Tweet.find(params[:id])
    # # render action: 'status'

    # respond_to do |format|
    #   format.html
    #   format.xml { render xml: @tweet }
    #   format.json { render json: @tweet }
    end

  end

  def new

  end

  def edit
    # @tweet = Tweet.find(params[:id])

    # if session[:zombie_id] != @tweet.zombie_id
    #   redirect_to(tweets_path, notice: "don't")
    # end
  end

  def create

  end

  def update

  end

  def destroy

  end

  def get_tweet
    @tweet = Tweet.find(params[:id])
  end

  def check_auth
    if session[:zombie_id] != @tweet.zombie_id
      redirect_to(tweets_path, notice: "wooooooo")
    end
  end

  def get_zombie
    @zombie = Zombie.find(params[:zombie_id])
  end
end