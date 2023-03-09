class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.boolean :income
      t.decimal :sum
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
