class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :student_id
      t.string :student_name
      t.text :annotations

      t.timestamps
    end
  end
end
