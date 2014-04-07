class Stop < ActiveRecord::Base

  belongs_to :station
  belongs_to :bus_line
end
