class MoviesController < ApplicationController

    def index
        @movies = Movie.all
        render json: @movies
    end

    def create
        @movie = Movie.create(movie_params)
        @movie.save
    end

    private

    def movie_params
        params.require(:movie).permit(:id, :title, :poster_path, :release_date, :vote_average, :overview, :genre_ids)
    end

end


