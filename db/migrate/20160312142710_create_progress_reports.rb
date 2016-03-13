class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.string :info
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
