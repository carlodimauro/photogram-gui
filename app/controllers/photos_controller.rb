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


  def add_photo
    newphoto = Photo.new
    newphoto.image = params.fetch("input_image")
    newphoto.caption = params.fetch("input_caption")
    newphoto.owner_id = params.fetch("input_owner_id")
    newphoto.save
    redirect_to("/photos/#{newphoto.id}")


  end

  def edit_photo
    editid = params.fetch("photoidpath")
    currentphoto = Photo.where({:id => editid}).first
    currentphoto.image = params.fetch("update_img_text")
    currentphoto.caption = params.fetch("update_caption_text")
    currentphoto.save

    redirect_to("/photos/#{currentphoto.id}")
  end

end
