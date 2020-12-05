# frozen_string_literal: true

class TechnologiesController < ApplicationController
  before_action :find_technology, only: [:show]

  # GET /technologies
  # GET /technologies.json
  def index
    @technologies = Technology.all
  end

  # GET /technologies/1
  # GET /technologies/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def find_technology
    @technology = Technology.find(params[:id])
  end
end
