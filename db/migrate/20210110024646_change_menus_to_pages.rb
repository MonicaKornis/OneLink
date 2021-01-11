class ChangeMenusToPages < ActiveRecord::Migration[5.2]
  def change
    rename_table :menus, :pages
  end
end
