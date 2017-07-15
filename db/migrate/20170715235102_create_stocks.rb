class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :security_name
      t.string :security_symbol
      t.float :array_of_prices_over_the_duration, array: true

      t.timestamps
    end
  end
end