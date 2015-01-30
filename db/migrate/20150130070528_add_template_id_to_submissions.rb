class AddTemplateIdToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :template_id, :integer
  end
end
