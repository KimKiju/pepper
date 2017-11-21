class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :passcode
      t.timestamps
    end
  end
end
