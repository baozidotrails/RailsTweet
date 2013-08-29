class ZombiesController < ApplicationController
  def index
    @zombies = Zombie.all
  end

  def show
    @zombie = Zombie.find(params[:id])
  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
end
