class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :goal_distance
      t.integer :challenge_duration

      t.string :embarrassment
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
