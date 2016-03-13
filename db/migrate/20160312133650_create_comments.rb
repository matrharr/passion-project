class CreateComments < ActiveRecord::Migration
  def change
    create_table :user_comments do |t|
      t.integer :user_id
      t.integer :profile_id
      t.string :body

      t.timestamps(null: false)
    end
  end
end
