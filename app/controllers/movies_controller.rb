class MoviesController < ApplicationController

    def index
        @movies = Movie.all
        @regular_movies = Movie.where(favorite: false)
        @favorite_movies = Movie.where(favorite: true) 
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.save
        redirect_to movies_path
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
        redirect_to movies_path
    end

    def favorite
        @movie = Movie.find(params[:id])
        @movie.favorite = true
        @movie.save
        redirect_to movies_path
    end

    def unfavorite
        @movie = Movie.find(params[:id])
        @movie.favorite = false
        @movie.save
        redirect_to movies_path
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end

    def show
        @movie = Movie.find(params[:id])
    end


private

    def movie_params
        params.require(:movie).permit(:name, :year, :image, :favorite)
    end
end
