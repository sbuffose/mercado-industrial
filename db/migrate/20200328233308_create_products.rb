class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :status, null: false, index: true, default: 0
      t.integer :target, null: false, index: true, default: 0
      t.string :price, null: false, default: 0
      t.string :address, null: false
      t.references :industry, foreign_key: true
      t.date :expires_at, null: false
      t.integer :condition, null: false, index: true, default: 0
      t.boolean :pick_up, null: false, default: true
      t.references :user, foreign_key: true
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :city
      t.integer :age
      t.string :comment
      t.integer :currency, null: false, index: true, default: 0

      t.timestamps
    end
  end
end
