class AddPageToOriginalImageLinks < ActiveRecord::Migration
  def change
    add_column :original_image_links, :page, :integer
  end
end
