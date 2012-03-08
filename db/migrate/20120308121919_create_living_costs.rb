class CreateLivingCosts < ActiveRecord::Migration
  def change
    create_table :living_costs do |t|
      t.string :title, :null => false
      t.text :description, :null => false
      t.text :city1, :null => false
      t.text :city2, :null => false
      t.text :city3, :null => false
      t.text :city4, :null => false

      t.timestamps
    end
  end
end
