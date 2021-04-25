class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.text :email
      t.references :booking, index: true, foreign_key: {to_table: :bookings}

      t.timestamps
    end
  end
end
