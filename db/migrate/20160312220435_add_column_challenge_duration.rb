class AddColumnChallengeDuration < ActiveRecord::Migration
  def change
    add_column :challenges, :challenge_duration, :string
  end
end
