class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :email
      t.string :password_digest
    end
  end
end
