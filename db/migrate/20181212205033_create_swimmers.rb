class CreateSwimmers < ActiveRecord::Migration[5.2]
  def change
    create_table :swimmers do |t|
      
      t.string :name
      t.string :gender
      t.integer :age
      t.string :poolclub
      t.string :coach
      t.string :rost
      t.string :weihgt
      t.text :achievement
      t.text :bestresult
      t.string :nomertel
      t.text :description
      

      t.timestamps null: false
    end
  end
end
