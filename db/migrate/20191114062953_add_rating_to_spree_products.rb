class AddRatingToSpreeProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :rating, :integer
  end
end
