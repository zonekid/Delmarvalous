class SpeciesController < ApplicationController

def index
  @species= Specie.all

  respond_to do |format|
    format.json { render json: @species }
  end
end


end
