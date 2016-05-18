class CreateInformationTypes < ActiveRecord::Migration
  def change
    create_table :information_types do |t|
      t.string :type_code
      t.string :name
      t.integer :confidentiality_impact_level
      t.integer :integrity_impact_level
      t.integer :availability_impact_level
      t.text :confidentiality_impact_description
      t.text :integrity_impact_description
      t.text :availability_impact_description
      t.integer :information_group_id

      t.timestamps null: false
    end
  end
end
