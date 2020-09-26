class FavoritesController < ApplicationController

    def index   
        @favorites = @current_student.favorites
    end

    def new
        @favorite = Favorite.new
        @students = Student.all
        @words = Word.all - @current_student.words
    end

    def create
        # byebug
        favorite_params = params.require(:favorite).permit(:priority_level, :word_id)

        @favorite = @current_student.favorites.create(favorite_params)
        # student = Student.find(params[:favorite][:student_id])
        redirect_to student_path(@current_student)
    end

end
