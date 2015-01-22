class AddPreviewImageLinksToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :preview_image_links, :text
  end
end
