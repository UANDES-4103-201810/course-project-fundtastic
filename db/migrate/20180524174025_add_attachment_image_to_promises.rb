class AddAttachmentImageToPromises < ActiveRecord::Migration[5.1]
  def self.up
    change_table :promises do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :promises, :image
  end
end
