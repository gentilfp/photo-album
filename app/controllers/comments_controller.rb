class CommentsController < ApplicationController

  def create
  	@photo = Photo.get(params[:comment][:photo_id])
    # binding.pry
  	@photo.comments << Comment.new(params[:comment])

    if @photo.comments.save
  		respond_to do |format|
  			format.html { redirect_to @photo }
  		end
  	else
  		redirect_to @photo
  	end
  end

end
