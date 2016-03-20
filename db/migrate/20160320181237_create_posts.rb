class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :bird
      t.string :img_url
      t.string :date_seen
      t.string :city
      t.string :state
      t.text :field_notes
      
      t.timestamps null: false
    end
  end
end
