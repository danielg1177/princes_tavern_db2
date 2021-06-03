class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :ingrediants
      t.string :url

      t.timestamps
    end
  end
end
