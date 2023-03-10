class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.boolean :income
      t.decimal :sum
      t.text :description

      t.timestamps
    end
  end
end
