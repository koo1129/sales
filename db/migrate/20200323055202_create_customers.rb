class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :company
      t.string :position
      t.text :detail
      t.text :logo
      t.text :businesscard
      t.string :email
      t.integer :phone
      t.references :user, foreign_key: true
      t.index :name, unique: true
      t.timestamps
    end
  end
end
