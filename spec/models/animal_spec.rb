require 'rails_helper'

describe Animal do
  it { should validate_presence_of :name, :species }
  it { should have_many :sightings }
end
