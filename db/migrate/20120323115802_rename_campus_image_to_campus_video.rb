class RenameCampusImageToCampusVideo < ActiveRecord::Migration
  def up
		rename_column(:universities, :campus_image, :campus_video)
  end

  def down
		rename_column(:universities, :campus_video, :campus_image)
  end
end
