class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
