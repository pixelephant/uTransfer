class ChangeUniversityCampusMapFieldType < ActiveRecord::Migration
  def change
  	remove_column(:universities, :campus_map)
	  add_column(:universities, :campus_map, :text)
  end
end
