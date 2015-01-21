class AddAttachmentLocationToTemplates < ActiveRecord::Migration
  def self.up
    change_table :templates do |t|
      t.attachment :location
    end
  end

  def self.down
    remove_attachment :templates, :location
  end
end
