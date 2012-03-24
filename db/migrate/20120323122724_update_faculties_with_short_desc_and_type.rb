class UpdateFacultiesWithShortDescAndType < ActiveRecord::Migration
  def change
	  add_column(:faculties, :level, :string)
	  add_column(:faculties, :short_description, :string)
  end
end
