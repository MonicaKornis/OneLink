class AddLinkNameColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :link_name, :string, null: false
  end
end

#table name, column name, data type, options hash
