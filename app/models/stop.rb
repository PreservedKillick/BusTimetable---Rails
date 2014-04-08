class Stop < ActiveRecord::Base

  belongs_to :station
  belongs_to :bus_line
  validates :station_id, :presence => true
  validates :bus_line_id, :presence => true

end
