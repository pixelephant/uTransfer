class AddPriorityToCountry < ActiveRecord::Migration
  def change
  	add_column :countries, :priority, :integer
  end
end
