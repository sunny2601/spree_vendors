class CreateVendorProducts < ActiveRecord::Migration
  def change
    create_table :spree_vendor_products do |t|
      t.references :product, :vendor

      t.timestamp
    end
  end
end
