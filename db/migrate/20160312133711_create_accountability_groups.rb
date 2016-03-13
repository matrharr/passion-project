class CreateAccountabilityGroups < ActiveRecord::Migration
  def change
    create_table :accountability_groups do |t|
      t.string :name

      t.timestamps(null: false)
    end
  end
end
