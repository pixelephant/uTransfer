class AddOfferOptionalFields < ActiveRecord::Migration
  def change
  	add_column :personals, :who_encouraged, :text
  	add_column :personals, :where_did, :text
  end
end
