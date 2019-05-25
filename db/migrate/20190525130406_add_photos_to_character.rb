class AddPhotosToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :photo, :string
    add_reference :characters, :specie, foreign_key: true
  end
end
