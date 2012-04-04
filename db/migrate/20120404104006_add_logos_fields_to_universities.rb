class AddLogosFieldsToUniversities < ActiveRecord::Migration
  def change
  	add_column(:universities, :index_logo, :string)
		add_column(:universities, :slider_logo, :string)
  end
end
