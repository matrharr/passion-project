class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :current_weight
      t.integer :goal_weight
      t.string :start_date
      t.string :finish_date
      t.string :mentor_email
      t.string :embarrassment
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
