class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, except: [:created_at, :updated_at], include: :movies
    end

    def show
        @user = User.find(params[:id])
        render json: @user, except: [:created_at, :updated_at], include: :movies
    end

    def create
        @user = User.create(user_params)
        @user.save
    end



    private

    def user_params
        params.require(:user).permit(:name)
    end


end
