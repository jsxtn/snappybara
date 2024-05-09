class CamerasController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
  end

  def index
    @cameras = Camera.all

    # Geocoding stuff - the `geocoded` scope filters only cameras with coordinates
    @users = User.all
    # @users.each do |user|
    #   coordinates = GeocodingService.geocode(user.address)
    #   user.latitude = coordinates[:latitude]
    #   user.longitude = coordinates[:longitude]
    #   user.save
    # end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
    # end of geocoding stuff
  end

  def new
    @camera = Camera.new
  end

  def create
    @camera = Camera.new(camera_params)
    @camera.user_id = current_user.id
    @camera.save!
    redirect_to camera_path(@camera)
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

# upload image code for cloudinary (controller): result = Cloudinary::Uploader.upload("path/to/your/image.jpg")
# display image code for cloudinary (page): <%= cl_image_tag("your_image_public_id", width: 400, height: 300, crop: :fill) %>
