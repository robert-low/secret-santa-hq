class AddWishlistToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :wishlist, null: true, foreign_key: true
  end
end
