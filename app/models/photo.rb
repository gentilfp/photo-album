class Photo

  include DataMapper::Resource
  include DataMapper::Validate
  include Paperclip::Resource

  property :id, Serial
  property :title, String
  property :description, Text
  property :picture_file_name, String
  property :picture_content_type, String
  property :picture_file_size, Integer
  property :picture_updated_at, DateTime

  has_attached_file :picture, styles: { medium: "400x400>", thumb: "100x100>" }

  validates_presence_of :title
  validates_presence_of :description

  has n, :comments, constraint: :destroy
end
