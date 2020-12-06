# frozen_string_literal: true

module Api
  module V1
    class DefinitionsController < ApplicationController
      before_action :find_definition, only: %i[update destroy]
      before_action :admin_access, only: :pending

      def index
        @definitions = Definition.all.okayed
        render json: @definitions, status: :accepted
      end

      # this one needs to check if the user is an admin
      def pending
        @definitions = Definition.all.pending
        render json: @definitions, status: :accepted
      end

      def show
        @definition = Definition.find(params[:id])
        raise ArgumentError, 'this definition is waiting to be approved' unless @definition.approved
      rescue ActiveRecord::StatementInvalid, ActiveRecord::RecordNotFound, ArgumentError, NoMethodError => e
        render json: { "error": e.message.to_s }, status: 400
      else
        render json: @definition, status: :accepted
      end

      def create
        @definition = Definition.create!(definition_params)
        render json: @definition, status: :accepted
      end

      def update
        @definition.update(definition_params, approved: false)
        render json: @definition, status: :accepted
      end

      def destroy
        @definition.destroy
        head :no_content
      end

      private

      def admin_access
        raise ArgumentError, 'you need to be an admin to see this content' unless @current_user.admin
      rescue StandardError => e
        render json: { "error": e.message.to_s }, status: 401
      end

      def find_definition
        @definition = Definition.find(params[:id])
      end

      def definition_params
        params.permit(
          :content,
          :word_id,
          :user_id,
          :read_more_url,
          :read_more_at,
          :meme_url,
          :meme_alt_text
        )
      end
    end
  end
end
