class AddIndextoMenuIdandUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :pages, :user_id
    add_index :links, :page_id
  end
end
