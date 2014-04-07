class EditStops < ActiveRecord::Migration
  def change
    rename_column :stops, :bus_lines_id, :bus_line_id
    rename_column :stops, :stations_id, :station_id

  end
end
