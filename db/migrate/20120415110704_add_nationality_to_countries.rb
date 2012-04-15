class AddNationalityToCountries < ActiveRecord::Migration
  def change
  	add_column :countries, :nationality, :string
  end
end
