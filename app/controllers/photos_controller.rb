class PhotosController < ApplicationController
  def index
    root to: 'photos#index'
    @photos = Photo.all
  end
end
