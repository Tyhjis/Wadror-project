class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_type
      t.integer :day
      t.integer :month
      t.integer :year
      t.float :time_used

      t.timestamps
    end
  end
end
