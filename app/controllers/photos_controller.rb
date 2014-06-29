class PhotosController < ApplicationController
  def index
    @photos = Photo.paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      format.html
    end
  end

  def show
    @photo = Photo.get(params[:id])
  end

  def new
    @photo = Photo.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @photo = Photo.new(params[:photo])
    respond_to do |format|
      if @photo.save
        format.html { redirect_to photo_path @photo, notice: t('photos.successfully_created') }
      else
        format.html { redirect_to new_photo_path, notice: t('photos.error_on_creating') }
      end
    end
  end

  def edit
    @photo = Photo.get(params[:id])
  end

  def update
    @photo = Photo.get(params[:id])
    respond_to do |format|
      if @photo.update(params[:photo])
        format.html { redirect_to photos_path, notice: t('photos.successfully_updated') }
      else
        format.html { redirect_to edit_photo_path @photo, notice: t('photos.error_on_editing') }
      end
    end
  end

  def destroy
    @picture = Photo.get(params[:id])
    respond_to do |format|
      if @picture.destroy!
        format.html { redirect_to photos_path, notice: t('photos.successfully_deleted') }
      else
        format.html { redirect_to photos_path, notice: t('photos.error_on_deleting') }
      end
    end
  end
end
