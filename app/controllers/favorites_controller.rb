class FavoritesController < ApplicationController

    def index   
        @favorites = @current_user.favorites
    end

    def new
        @favorite = Favorite.new
        @users = User.all
        @words = Word.all - @current_user.words
    end

    def create
        favorite_params = params.require(:favorite).permit(:priority_level, :word_id)
        @favorite = @current_user.favorites.create(favorite_params)
        redirect_to user_path(@current_user)
    end

end
