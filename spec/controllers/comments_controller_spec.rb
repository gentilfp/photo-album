require 'spec_helper'

describe CommentsController do

  let(:photo) { FactoryGirl.create(:photo, :with_picture) }

  describe "POST create" do
    it "creates 1 comment using AJAX", js: true do
      expect {
        xhr :post, :create, comment: {content: "Hello World!", photo_id: photo.id }
      }.to change(Comment, :count).by(1)
    end
  end
end
