class CommentsController < ApplicationController
    def create
      @cloud = Cloud.find(params[:article_id])
      @comment = @cloud.comments.create(comment_params)
      redirect_to cloud_path(@cloud)
    end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
  end
  