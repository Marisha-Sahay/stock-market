class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :min
      t.string :max
      t.float :profit
      t.string :name

      t.timestamps
    end
  end
end