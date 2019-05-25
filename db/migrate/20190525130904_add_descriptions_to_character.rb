class AddDescriptionsToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :descriptions, :string, array: true, default: []
  end
end
