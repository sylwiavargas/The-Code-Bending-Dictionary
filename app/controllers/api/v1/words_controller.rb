# frozen_string_literal: true

module Api
  module V1
    class WordsController < ApplicationController
      before_action :find_word, only: %i[show edit update destroy]
      before_action :admin_access, only: :pending

      def index
        words = Word.okayed.has_definitions
        render json: words, status: :accepted
      end

      # this one needs to check if the user is an admin
      def pending
        @words = Word.pending
        render json: @words, status: :accepted
      end

      def show
        raise ArgumentError, 'this word is waiting to be approved' unless @word.approved
      rescue ActiveRecord::StatementInvalid, ActiveRecord::RecordNotFound, ArgumentError, NoMethodError => e
        render json: { "error": e.message.to_s }, status: 400
      else
        render json: @word, status: :accepted
      end

      def create
        word = Word.create!(word_params)
        render json: word, status: :accepted
      end

      def update
        @word.update(word_params)
        redirect_to word_path(word)
      end

      def destroy
        word.destroy
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
        params.permit(:content, :approved)
      end
    end
  end
end
