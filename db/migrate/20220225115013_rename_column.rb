class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :trees, :country_name, :countryname
  end
end
