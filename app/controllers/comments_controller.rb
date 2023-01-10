class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
    def create
      @cloud = Cloud.find(params[:cloud_id])
      @comment = @cloud.comments.create(comment_params)
      redirect_to cloud_path(@cloud)
    end


  def destroy
    @cloud = Cloud.find(params[:cloud_id])
    @comment = @cloud.comments.find(params[:id])
    @comment.destroy
    redirect_to cloud_path(@cloud), status: :see_other
  end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
