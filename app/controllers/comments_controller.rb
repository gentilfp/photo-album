class CommentsController < ApplicationController

  def create
  	@photo = Photo.get(params[:comment][:photo_id])
  	@photo.comments << Comment.new(params[:comment])

    if @photo.comments.save
  		respond_to do |format|
  			format.html { redirect_to @photo }
        format.js
  		end
    end
  end

end
