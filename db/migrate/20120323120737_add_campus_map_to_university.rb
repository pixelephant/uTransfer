class AddCampusMapToUniversity < ActiveRecord::Migration
  def change
		add_column(:universities, :campus_map, :string)
  end
end
