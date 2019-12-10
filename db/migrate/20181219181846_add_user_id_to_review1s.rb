class AddUserIdToReview1s < ActiveRecord::Migration[5.2]
  def change
    add_column :review1s, :user_id, :integer
  end
end
