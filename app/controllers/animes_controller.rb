class AnimesController < ApplicationController

  def index
    @animes = Anime.all
  end

  def new
      @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)

  if @anime.save
    redirect_to root_path
  else
    render :new
  end
  end

  private

  def anime_params
    params.require(:anime).permit(:title, :description, :year, :image_url, :quote, :production, :directed_by, 
      :genre_id1, :genre_id2, :genre_id3, :name1, :name2, :name3, :name4, :name5, :name6, :name7, :name8, :name9)
      .merge(user_id: current_user.id, genre_id1: params[:anime][:genre_id1], genre_id2: params[:anime][:genre_id2], genre_id3: params[:anime][:genre_id3])
  end  

end
