class ChangeMenuTableNameAndColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :menus, :menu_name, :page_name
    rename_column :menus, :menu_theme, :page_theme
    rename_column :links, :menu_id, :page_id
  end
end
