class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :start_time
      t.string :end_time
      t.string :title
      t.string :description
      t.boolean :public
      t.string :url
      t.date :date

      t.timestamps
    end
  end
end
