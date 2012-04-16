class RenamePersonalCountry < ActiveRecord::Migration
  def up
  	remove_column :personals, :country
  	add_column :personals, :country_id, :integer
  end
end
