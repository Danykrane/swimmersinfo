class AddAttachmentSwimmerImgToSwimmers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :swimmers do |t|
      t.attachment :swimmer_img
    end
  end

  def self.down
    remove_attachment :swimmers, :swimmer_img
  end
end
