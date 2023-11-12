class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all.order({:created_at => :desc})
  render({:template => "phototemplates/index"})
  end

  def show
    input_photo = params.fetch("photoidpath")
    @currentphoto = Photo.where(:id => input_photo).first
    render({:template => "phototemplates/show"})
  end

  def destroy
    destroyid = params.fetch("destroypath")
    photoid = Photo.where({:id => destroyid}).first
    photoid.destroy

    redirect_to("/photos")
  end
end
