class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.integer :count, null: false, default: 1
      t.integer :category, null: false, default: 0
      t.integer :price_cents, null: false, default: 0

      t.timestamps
    end
  end
end
