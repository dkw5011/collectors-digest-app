class AddCategoryId < ActiveRecord::Migration
  def change
    add_column :collectables, :category_id, :integer
  end
end
