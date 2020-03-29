class CreateBiddings < ActiveRecord::Migration[5.2]
  def change
    create_table :biddings do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :status, null: false, index: true
      t.timestamps
    end
  end
end
