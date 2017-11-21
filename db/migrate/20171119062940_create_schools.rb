class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.timestamps
    end
  end
end
