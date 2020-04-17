class UserMoviesController < ApplicationController

    def index
        @userMovies = UserMovie.all
        render json: @userMovies
    end

    def create
        @userMovie = UserMovie.create(userMovie_params)
        @userMovie.save
    end

    def show
        @userMovie= UserMovie.find(params[:id])
        render json: @userMovie, except: [:created_at, :updated_at]
    end

    def destroy
        @userMovie = UserMovie.find(params[:id])
        @userMovie.destroy
        @userMovies = UserMovie.all
        render json: @userMovie
    end

    private

    def userMovie_params
        params.require(:user_movies).permit(:user_id, :movie_id)
    end
end
