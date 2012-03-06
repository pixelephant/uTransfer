class CreateProcessFlows < ActiveRecord::Migration
  def up
    create_table :process_flows do |t|
      t.string :title
      t.text :text
      t.integer :position

      t.timestamps
    end
		ProcessFlow.create_translation_table! :text => :text, :title => :text
  end

	def down
		drop_table :process_flows
		ProcessFlow.drop_translation_table!
	end


end
