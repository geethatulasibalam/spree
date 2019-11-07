class RemoveSalePriceFromSpreeVariants < ActiveRecord::Migration[6.0]
  def change
  	remove_column :spree_variants, :sale_price
  end
end
