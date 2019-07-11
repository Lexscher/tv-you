class AddColumnsToTvshows < ActiveRecord::Migration[5.2]
  def change
    add_column :tvshows, :original_name, :string
    add_column :tvshows, :popularity, :decimal
    add_column :tvshows, :first_air_date, :string
    add_column :tvshows, :backdrop_path, :string
    add_column :tvshows, :poster_path, :string
  end
end
