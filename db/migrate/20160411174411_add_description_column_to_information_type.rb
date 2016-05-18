class AddDescriptionColumnToInformationType < ActiveRecord::Migration
  def change
    add_column :information_types, :description, :text
  end
end
