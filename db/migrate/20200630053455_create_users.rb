class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :icon_url
      t.string :password
      
      t.timestamps
    end
  end
end
