require 'spec_helper'

describe Stop do
  it {should belong_to :station}
  it {should belong_to :bus_line}
end
