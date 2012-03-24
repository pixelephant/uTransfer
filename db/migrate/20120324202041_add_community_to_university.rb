class AddCommunityToUniversity < ActiveRecord::Migration
  def change
		add_column(:universities, :community, :text)
		add_column(:universities, :community_video, :string)
  end
end
