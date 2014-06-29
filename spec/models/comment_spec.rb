require 'spec_helper'

describe Comment do
  it { should have_property :id }
  it { should have_property :content }

  it { should validate_presence_of :content }

  it { should belong_to :photo }
  it { should have_property :photo_id }
end
