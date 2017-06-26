require 'rails-helper'

describe Sighting do
  it { should validate_presence_of :date, :lat, :lng, :region }
  it { should belong_to :animal }
end
