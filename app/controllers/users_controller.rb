class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end 

    def create
        user = User.create!(user_params)
        render json: user
    end 

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end 

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json: {}
    end 

    # favorites = items that the user "favorited" - to view at a later time
    def favorites 
        user = User.find(params[:id])
        favorites = user.favorites
        render json: favorites
    end

    # carts = items in the user's cart to purchase
    def carts
        user = User.find(params[:id])
        carts = user.carts
        render json: carts
    end 

    # Will need login and logout actions for Auth

    # def login
    # end 

    # def logout
    # end

    private
    def user_params
        params.require(:user).permit(:username, :password, :name, :profile_picture, :email, :phone_number, :address, :cc_number, :cc_cvv, :cc_date, :favorites, :carts)
    end
end


 