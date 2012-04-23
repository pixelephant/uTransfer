class AddOthersToPersonal < ActiveRecord::Migration
  def change
  	add_column :personals, :who_encouraged_other, :text
  	add_column :personals, :where_did_other, :text
  end
end
