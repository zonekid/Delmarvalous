class SpeciesController < ApplicationController

def index
  @species= Species.all

  respond_to do |format|
    format.json { render json: @species }
  end
end

def show
  # @category = Category.find(params[:category_id])
  @specie = Species.find(params[:id])

  respond_to do |format|
    format.json { render json: @specie }
  end
end

end
