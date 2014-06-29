require 'spec_helper'

describe PhotosController do

  let!(:valid_photo)  { FactoryGirl.create(:photo, :with_picture) }

  describe "GET index" do
    it "gets photos" do
      get :index
      expect(assigns[:photos]).to be_a DataMapper::Collection
    end
  end

  describe "GET show" do
    it "finds picture" do
      get :show, { id: valid_photo.to_param }
      expect(assigns[:photo]).to eq valid_photo
    end
  end

  describe "GET new" do
    it "assigns as a Photo" do
      get :new
      expect(assigns[:photo]).to be_a Photo
    end
  end

  describe "GET edit" do
    it "finds picture to be edited" do
      get :edit, { id: valid_photo.to_param }
      expect(assigns[:photo]).to eq valid_photo
    end
  end

  describe "POST create" do
    context "with valid parameters" do
      it "creates a photo" do
        expect {
          post :create, photo: FactoryGirl.attributes_for(:photo, :with_picture)
        }.to change(Photo, :count).by 1
      end
    end

    context "with invalid parameters" do
      it "does not create a photo" do
        expect {
          post :create, photo: FactoryGirl.attributes_for(:photo, title: nil)
        }.to change(Photo, :count).by 0
      end
    end
  end

  describe "POST update" do
    context "with valid parameters" do
      it "updates a photo" do
        get :edit, { id: valid_photo.to_param }
        photo = assigns[:photo]

        put :update, id: photo.id, photo: FactoryGirl.attributes_for(:photo, title: "Updated Title")
        expect(assigns[:photo].title).to eq "Updated Title"
      end
    end

    context "with invalid parameters" do
      it "does not update a photo" do
        get :edit, { id: valid_photo.to_param }
        photo = assigns[:photo]

        put :update, id: photo.id, photo: FactoryGirl.attributes_for(:photo, title: nil)
        expect(assigns[:photo]).to_not be_valid
      end
    end
  end

  describe "POST destroy" do
    it "destroys photo" do
      expect {
        delete :destroy, { id: valid_photo.to_param }
      }.to change(Photo, :count).by -1
    end
  end

end
