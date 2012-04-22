class AddInterestsToPersonals < ActiveRecord::Migration
  def change
  	add_column :personals, :interests, :text
  end
end
