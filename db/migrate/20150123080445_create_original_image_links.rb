class CreateOriginalImageLinks < ActiveRecord::Migration
  def change
    create_table :original_image_links do |t|
      t.string :link
      t.integer :submission_id

      t.timestamps
    end
  end
end
