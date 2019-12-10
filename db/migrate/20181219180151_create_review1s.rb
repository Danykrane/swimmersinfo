class CreateReview1s < ActiveRecord::Migration[5.2]
  def change
    create_table :review1s do |t|
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
