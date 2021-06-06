class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :time
      t.integer :count

      t.timestamps
    end
  end
end
