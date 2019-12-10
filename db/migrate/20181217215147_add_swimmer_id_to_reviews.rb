class AddSwimmerIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :swimmer_id, :integer
  end
end
