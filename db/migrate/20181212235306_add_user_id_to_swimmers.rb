class AddUserIdToSwimmers < ActiveRecord::Migration[5.2]
  def change
    add_column :swimmers, :user_id, :integer
  end
end
