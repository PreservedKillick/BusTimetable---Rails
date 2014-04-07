class CreateBusLine < ActiveRecord::Migration
  def change
    create_table :bus_lines do |t|
      t.string :name
    end

    create_table :stations do |t|
      t.string :name
    end

    create_table :stops do |t|
      t.belongs_to :bus_lines
      t.belongs_to :stations
    end
  end
end
