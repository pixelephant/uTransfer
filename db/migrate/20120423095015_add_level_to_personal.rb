class AddLevelToPersonal < ActiveRecord::Migration
  def change
  	add_column :personals, :level, :string
  end
end
