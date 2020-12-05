class CreateConsumerValues < ActiveRecord::Migration[5.2]
  def change
    create_table :consumer_values do |t|
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
