class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :parent, foreign_key: true
      t.references :babysitter, foreign_key: true
      t.datetime :datetime
      t.integer :duration

      t.timestamps
    end
  end
end
