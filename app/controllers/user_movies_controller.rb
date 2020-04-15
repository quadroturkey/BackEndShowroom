class UserMoviesController < ApplicationController

    def index
        @userMovies = UserMovie.all
        render json: @userMovies
    end

    def create
        @userMovie = UserMovie.create(userMovie_params)
        @userMovie.save
    end

    private

    def userMovie_params
        params.require(:user_movies).permit(:user_id, :movie_id)
    end
end
