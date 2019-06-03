class AddFavoriteToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :favorite, :boolean
  end
end
