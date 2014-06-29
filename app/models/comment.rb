class Comment

  include DataMapper::Resource

  property :id, Serial
  property :content, Text

  validates_presence_of :content

  belongs_to :photo
end
