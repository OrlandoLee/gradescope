class CreatePreviewImageLinks < ActiveRecord::Migration
  def change
    create_table :preview_image_links do |t|
      t.string :link
      t.integer :submission_id

      t.timestamps
    end
  end
end
