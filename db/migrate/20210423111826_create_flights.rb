class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.date :date
      t.time :time
      t.integer :duration
      t.references :from, index: true, foreign_key: {to_table: :airports}
      t.references :to, index: true, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
