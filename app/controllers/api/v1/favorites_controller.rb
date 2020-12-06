# frozen_string_literal: true

module Api
  module V1
    class FavoritesController < ApplicationController
      def create
        @favorite = @current_user.favorites.create!(favorite_params)
        render json: @favorite, status: :accepted
      end

      def update
        @favorite = Favorite.find(params[:id])
        @favorite.update(favorite_params)
        render json: @favorite, status: :accepted
      end

      private

      def favorite_params
        params.permit(:word_id)
      end
    end
  end
end
