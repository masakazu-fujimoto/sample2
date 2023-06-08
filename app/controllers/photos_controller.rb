class PhotosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image, :text)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
