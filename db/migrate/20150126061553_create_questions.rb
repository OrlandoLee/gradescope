class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :template_id
      t.integer :page
      t.integer :x1
      t.integer :x2
      t.integer :y1
      t.integer :y2
      t.integer :height
      t.integer :width
      t.integer :points

      t.timestamps
    end
  end
end
