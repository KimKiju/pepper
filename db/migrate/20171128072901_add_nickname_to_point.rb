class AddNicknameToPoint < ActiveRecord::Migration
  def change
    add_column :points, :nickname, :string
  end
end
