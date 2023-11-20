class CreateTrainingSets < ActiveRecord::Migration[7.1]
  def change
    create_table :training_sets do |t|
      t.integer :repetitions
      t.decimal :weight
      t.date :date
      t.string :exercise_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
