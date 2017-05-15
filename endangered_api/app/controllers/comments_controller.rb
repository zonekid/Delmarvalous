class CommentsController < ApplicationController

def index
  @comments = Comment.all

  respond_to do |format|
    format.json { render json: @comments }
  end
end

def create
  @specie= Species.find(params[:species_id])
  @comment= @specie.comments.build(comment_params)
end

private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
