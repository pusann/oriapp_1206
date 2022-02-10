class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :nickname, null: false
      t.string :title,null: false
      t.text   :metadata
      t.string :sex_id, null: false
      t.integer :age,null: false
      t.timestamps
    end
  end
end
