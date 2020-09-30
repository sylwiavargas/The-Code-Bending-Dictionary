class WordsController < ApplicationController
    before_action :get_word, only: [:show, :edit, :update, :destroy]
  
    def index
      @words = Word.all
    end
  
    def new
      @word = Word.new
    end

    def create
      @word = Word.create(word_params)
      redirect_to words_path
    end
  
    def update
      @word.update(word_params)
      redirect_to word_path(@word)
    end
  
    def destroy
      @word.destroy
      redirect_to words_path
    end
  
    private
    def get_word
      @word = Word.find(params[:id])
    end
  
    def word_params
      params.require(:word).permit(:content, :approved)
    end
  
  end