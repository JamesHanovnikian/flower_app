class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :family
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
