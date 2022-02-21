class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tree, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :comment
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
