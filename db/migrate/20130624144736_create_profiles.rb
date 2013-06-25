class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :tagline
      t.text :bio
      t.string :user_id

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
