class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites, except: [:created_at, :updated_at, :user_id, :product_id]     
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def update
        favorite = Favorite.find(params[:id])
        favorite.update!(favorite_params)
        render json: {}
    end 

    def create
        favorite = Favorite.create!(favorite_params)
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: {}
    end 

    private
    def favorite_params
        params.require(:favorite).permit(:user_id, :product_id)
    end
end
