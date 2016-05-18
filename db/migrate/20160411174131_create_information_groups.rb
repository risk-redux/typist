class CreateInformationGroups < ActiveRecord::Migration
  def change
    create_table :information_groups do |t|
      t.integer :information_class_id
      t.string :group_code
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
