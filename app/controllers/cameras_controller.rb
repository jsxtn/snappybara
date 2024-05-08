class CamerasController < ApplicationController


  def home
  end

  def index
    # @cameras = Cameras.all
  end

  def show
    # @camera = Camera.find(params[:id])
  end

  def new
    @camera = Camera.new
  end

  def create
    @camera = Camera.new(camera_params)
    @camera.user_id = 1
    @camera.save!
    redirect_to camera_path(@camera)

  end

  def update
  end

  def camera_params
    params.require(:camera).permit(:title, :description, :price)
  end

end
