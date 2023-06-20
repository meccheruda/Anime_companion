class AnimesController < ApplicationController
  before_action :check_user_id, only: [:new]

  def index
    if params[:q].present?
      @q = Anime.ransack(params[:q])
      @animes = @q.result
    else
      @q = Anime.ransack
      @animes = Anime.all
    end
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

  def show
    @anime = Anime.find(params[:id])
  end

  def search
    @q = Anime.ransack(params[:q])
    @results = @q.result(distinct: true)
  end

  private

  def anime_params
    params.require(:anime).permit(:title, :description, :year, :image_url, :quote, :production, :directed_by, 
      :genre_id1, :genre_id2, :genre_id3, :name1, :name2, :name3, :name4, :name5, :name6, :name7, :name8, :name9)
      .merge(user_id: current_user.id, genre_id1: params[:anime][:genre_id1], genre_id2: params[:anime][:genre_id2], genre_id3: params[:anime][:genre_id3])
  end  

  def check_user_id
    unless current_user.id == 1
      flash[:alert] = "管理者ではないため、このページにはアクセスできません。"
      redirect_to root_path
    end
  end

end
