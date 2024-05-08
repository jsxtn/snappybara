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
    #@camera = Camera.new
  end

  def create

  end

  def update
  end

end

# upload image code for cloudinary (controller): result = Cloudinary::Uploader.upload("path/to/your/image.jpg")
# display image code for cloudinary (page): <%= cl_image_tag("your_image_public_id", width: 400, height: 300, crop: :fill) %>
