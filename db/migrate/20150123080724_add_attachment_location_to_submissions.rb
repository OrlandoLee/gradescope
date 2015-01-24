class AddAttachmentLocationToSubmissions < ActiveRecord::Migration
  def self.up
    change_table :submissions do |t|
      t.attachment :location
    end
  end

  def self.down
    remove_attachment :submissions, :location
  end
end
