# frozen_string_literal: true

class VotesController < ApplicationController
  before_action :get_vote, only: %i[show edit update destroy]

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create(vote_params)
  end

  def update
    @vote = Vote.update(vote_params)
    redirect_to votes_path
  end

  def destroy
    @vote.destroy
    redirect_to votes_path
  end

  private

  def get_vote
    @user = Vote.find(params[:id])
  end

  def vote_params
    values = params.require(:vote).permit(:value, :definition_id)
    { user: @current_user, definition_id: values[:definition_id], value: values[:value] }
  end
end
