class AddFeatureToVendors < ActiveRecord::Migration
  def change
    add_column :spree_vendors, :feature, :boolean, :default => false
  end
end
