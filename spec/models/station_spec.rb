require 'spec_helper'

describe Station do
  it {should have_many :stops}
  it {should have_many(:bus_lines).through(:stops) }
end
