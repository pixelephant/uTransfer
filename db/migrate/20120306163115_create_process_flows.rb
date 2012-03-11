class CreateProcessFlows < ActiveRecord::Migration
  def up
    create_table :process_flows do |t|
      t.string :title, :null => false
      t.text :text, :null => false
      t.integer :position, :null => false

      t.timestamps
    end
		ProcessFlow.create_translation_table! :text => :text, :title => :string
  end

	def down
		drop_table :process_flows
		ProcessFlow.drop_translation_table!
	end


end
