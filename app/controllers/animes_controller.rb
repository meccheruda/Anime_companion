class AnimesController < ApplicationController

  def index
    @animes = Anime.all
  end

  def new
  end

  def create
  end


end
