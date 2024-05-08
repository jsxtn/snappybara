class CamerasController < ApplicationController


  def home
  end

  def index
   @cameras = Camera.all
  end

  def new
    #@camera = Camera.new
  end

  def create

  end

  def update
  end

    #show camera
    def show
      @camera = Camera.find(params[:id])
      @user = User.find(@camera.user_id)
    end

    private

    def camera_params
      params.require(:camera).permit(:title, :description, :price, :user_id)
    end
end
