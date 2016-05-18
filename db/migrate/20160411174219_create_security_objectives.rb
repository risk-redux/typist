class CreateSecurityObjectives < ActiveRecord::Migration
  def change
    create_table :security_objectives do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
