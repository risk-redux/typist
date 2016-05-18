class CreateInformationClasses < ActiveRecord::Migration
  def change
    create_table :information_classes do |t|
      t.string :class_code
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
