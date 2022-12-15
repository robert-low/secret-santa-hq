class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
