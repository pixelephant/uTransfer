class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :gender, :null => false
      t.string :country, :null => false
      t.integer :birth_year, :null => false
      t.string :phone, :null => false
      t.string :email, :null => false
      t.text :message
      t.integer :university_id
      t.integer :faculty_id
      t.text :apply_to

      t.timestamps
    end
  end
end
