class CreateImpactLevels < ActiveRecord::Migration
  def change
    create_table :impact_levels do |t|
      t.integer :impact_level
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
