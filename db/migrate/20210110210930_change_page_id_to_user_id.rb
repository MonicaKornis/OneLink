class ChangePageIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :links, :page_id, :user_id
  end
end
