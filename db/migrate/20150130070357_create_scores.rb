class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :submission_id
      t.integer :question_id
      t.integer :score
      t.string :notes

      t.timestamps
    end
  end
end
