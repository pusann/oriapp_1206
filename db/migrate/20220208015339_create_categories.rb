class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :users  do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :first_name,         null: false
      t.string :last_name,          null: false
      t.string :first_name_kana,    null: false
      t.string :last_name_kana,     null: false
      t.string :nickname,           null: false
      t.string :sex_id,             null: false
      t.integer :age,               null: false
      t.integer :category_id ,      null: false
      
      t.timestamps
    end
  end
end
