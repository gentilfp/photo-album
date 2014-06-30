# require 'datamapper_adapter'

class Comment

  # A very very (very) simple version of the dm-adapter
  module DataMapperAdapter
    module Records
      def records
        klass.all(id: @ids)
      end
    end
  end

  include DataMapper::Resource
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  property :id, Serial
  property :content, Text

  validates_presence_of :content

  belongs_to :photo
end
