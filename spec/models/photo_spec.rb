require 'spec_helper'

describe Photo do
  it { should have_property :id }
  it { should have_property :title }
  it { should have_property :description }

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  it { should have_many :comments }
end
