class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :trees, :country, :countryname
  end
end
