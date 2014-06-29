class Photo

  include DataMapper::Resource
  include DataMapper::Validate
  include Paperclip::Resource

  property :id, Serial
  property :title, String
  property :description, Text
  has_attached_file :picture, styles: { medium: "400x400>", thumb: "100x100>" }

  validates_presence_of :title
  validates_presence_of :description

  has n, :comments, dependent: :destroy

end
