class CommentsController < ApplicationController
  def create
    post = Post.find(comment_params[:post_id])
    content = params[:comment][:content]
    @comment = post.comments.build(content: content, user: current_user)
    @comment.save
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end

end