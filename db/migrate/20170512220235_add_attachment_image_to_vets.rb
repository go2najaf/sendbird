class AddAttachmentImageToVets < ActiveRecord::Migration
  def self.up
    change_table :vets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vets, :image
  end
end
