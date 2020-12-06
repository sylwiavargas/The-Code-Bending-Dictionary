# frozen_string_literal: true

module Api
  module V1
    class VotesController < ApplicationController
      before_action :find_vote, only: %i[show update destroy]

      def create
        @vote = Vote.create!(vote_params)
      end

      def update
        @vote = Vote.update(vote_params)
        render json: @vote, status: :accepted
      end

      def destroy
        @vote.destroy
        head :no_content
      end

      private

      def find_vote
        @vote = Vote.find(params[:id])
      end

      def vote_params
        values = params.permit(:value, :definition_id)
        { user: @current_user, definition_id: values[:definition_id], value: values[:value] }
      end
    end
  end
end
