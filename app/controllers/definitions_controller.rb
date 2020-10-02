class DefinitionsController < ApplicationController
    before_action :get_definition, only: [:edit, :update, :destroy] #, :show]
  
    # def index
    #   @definitions = Definition.all
    # end
  
    def new
      @definition = Definition.new
      @words = Word.all
    end
    
    def create
      @definition = Definition.create(definition_params)
      redirect_to word_path(@definition.word)
    end

    def edit
        @words = Word.all
    end
  
    def update
      @definition.update(definition_params)
      redirect_to definition_path(@definition)
    end
  
    def destroy
      @definition.destroy
      redirect_to definitions_path
    end
  
    private
    def get_definition
      @definition = Definition.find(params[:id])
    end
  
    def definition_params
      params.require(:definition).permit(:content, :word_id, :user_id, :read_more_url, :read_more_at, :meme_url, :meme_alt_text)
    end
  
  end