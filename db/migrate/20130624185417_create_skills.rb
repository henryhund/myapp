class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.string :category
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
