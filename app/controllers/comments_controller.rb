class CommentsController < ApplicationController
  # POST /posts or /posts.json
  def create
    @post = Post.find params[:post_id]
    @comment = Comment.new(comment_params)
    @comment.post = @post

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: "Comment was successfully created." }
        #format.json { render :show, status: :created, location: @post }
      else
        format.html { redirect_to @post, notice: "Error createing Comment" }
        # format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
