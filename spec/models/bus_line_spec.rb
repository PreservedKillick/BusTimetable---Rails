require 'spec_helper'

describe BusLine do
  it {should validate_presence_of :name}
  it {should have_many :stops}
  it {should have_many(:stations).through(:stops)}
end
