class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string :name
      t.string :attachment
      t.string :materiau
      t.string :qualite
      t.string :livraison

      t.timestamps null: false
    end
  end
end
