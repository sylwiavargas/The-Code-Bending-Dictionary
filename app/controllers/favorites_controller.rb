class FavoritesController < ApplicationController

    def index   
        @favorites =@current_user.favorites
    end

    def new
        @favorite = Favorite.new
        @users = Student.all
        @words = Word.all -@current_user.words
    end

    def create
        # byebug
        favorite_params = params.require(:favorite).permit(:priority_level, :word_id)

        @favorite =@current_user.favorites.create(favorite_params)
        # student = Student.find(params[:favorite][:student_id])
        redirect_to student_path(@current_student)
    end

end
