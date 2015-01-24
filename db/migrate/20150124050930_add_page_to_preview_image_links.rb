class AddPageToPreviewImageLinks < ActiveRecord::Migration
  def change
    add_column :preview_image_links, :page, :integer
  end
end
