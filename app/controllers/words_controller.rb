# frozen_string_literal: true

class WordsController < ApplicationController
  before_action :find_word, only: %i[show edit update destroy]
  before_action :admin_access, only: :pending

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.create!(word_params)
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

  def admin_access
    raise ArgumentError, 'you need to be an admin to see this content' unless @current_user.admin
  rescue StandardError => e
    render json: { "error": e.message.to_s }, status: 401
  end

  def find_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:content, :approved)
  end
end
