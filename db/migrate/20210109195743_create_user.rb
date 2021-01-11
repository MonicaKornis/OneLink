class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :address
    end

    create_table :menus do |t|
      t.string :menu_name, null: false
      t.integer :user_id, null: false
      t.string :menu_theme
    end

    create_table :links do |t|
      t.string :url, null: false
      t.integer :menu_id, null: false
    end

  end
end
