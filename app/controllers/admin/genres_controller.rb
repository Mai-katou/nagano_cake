class Admin::GenresController < ApplicationController
before_action :authenticate_admin!
  def index
    @new_genre = Genre.new
    @genres = Genre.all
  end

  def create
    @new_genre = Genre.new(genre_params)
    @new_genre.save
    redirect_to admin_genres_path

  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if  @genre.update(genre_params)
        redirect_to admin_genres_path
    else
        render :edit
    end
  end

private

  def genre_params
    params.require(:genre).permit(:name)
  end


end
