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
  @comment.save

end

# def update
#     @comment = Comment.find(params[:id])
#     if @comment.update(comment_params)
#       render json: @comment.to_json, status: :ok
#     else
#       render json: @comment.errors, status: :unprocessable_entity
#     end
#   end
#
#   def destroy
#     @comment = Comment.find(params[:id])
#     @comment.destroy
#     render json: {message: "success"}, status: :ok
#   end


private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
