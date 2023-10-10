class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @confession = Confession.find(params[:confession_id])
    @comment = @confession.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html {redirect_to confession_url(@confession), notice: "Your comment has been added."}
      end
    else
      respond_to do |format|
        format.html {redirect_to confession_url(@confession), alert: "Your comment could not be created !"}
      end
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
