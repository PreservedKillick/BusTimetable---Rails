require 'spec_helper'

describe Stop do
  it {should belong_to :station}
  it {should belong_to :bus_line}

  it {should validate_presence_of :station_id}
  it {should validate_presence_of :bus_line_id}
end
