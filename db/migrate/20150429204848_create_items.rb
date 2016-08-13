class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.string :image
      t.boolean :ordered, default: false

      t.timestamps null: false
    end
  end
end
