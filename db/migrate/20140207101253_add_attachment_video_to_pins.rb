class AddAttachmentVideoToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :video
      t.attachment :thumbnail
      t.string :video_description
    end
  end

  def self.down
    drop_attached_file :pins, :video
    drop_attached_file :pins, :thumbnail
    drop_attached_file :pins, :video_description
  end
end
