class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :url
      t.string :image
      t.string :location
      t.string :description
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
