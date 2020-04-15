class MovieGenresController < ApplicationController
    def index
        @movieGenres = MovieGenre.all
        render json: @movieGenres
    end

    def create
        @movieGenre = MovieGenre.create(movieGenre_params)
        @movieGenre.save
    end

    private

    def movieGenre_params
        params.require(:movie_genres).permit(:movie_id, :genre_id)
    end
end
