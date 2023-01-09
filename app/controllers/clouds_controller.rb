class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end

  def show
    @cloud = Cloud.find(params[:id])
  end

  def new
    @cloud = Cloud.new
  end

  def create
    @cloud = Cloud.new(cloud_params)

    if @cloud.save
      redirect_to @cloud
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @cloud = Cloud.find(params[:id])
  end

  def update
    @cloud = Cloud.find(params[:id])

    if @cloud.update(cloud_params)
      redirect_to @cloud
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @cloud = Cloud.find(params[:id])
    @cloud.destroy
    redirect_to root_path, status: :see_other
  end
  private
  def cloud_params
    params.require(:cloud).permit(:title, :body)
  end
end