class AddCategoryIdToSwimmers < ActiveRecord::Migration[5.2]
  def change
    add_column :swimmers, :category_id, :integer
  end
end
