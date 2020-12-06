# frozen_string_literal: true

module Api
  module V1
    class TechnologiesController < ApplicationController
      before_action :find_technology, only: [:show]

      def index
        @technologies = Technology.all
        render json: @technologies, status: :accepted
      end

      def show
        render json: @technology, status: :accepted
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def find_technology
        @technology = Technology.find(params[:id])
      end
    end
  end
end
