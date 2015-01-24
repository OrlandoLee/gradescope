class AddOriginalImageLinksToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :original_image_links, :string
    add_column :templates, :text, :string
  end
end
