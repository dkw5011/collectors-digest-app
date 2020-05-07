class CreateCollectables < ActiveRecord::Migration
  def change
    create_table :collectables do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :initial_cost
      t.integer :current_appraisel
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
