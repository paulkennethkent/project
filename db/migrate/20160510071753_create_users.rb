class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :token
      t.string :profile_img
      t.string :city

      t.timestamps null: false
    end
  end
end
