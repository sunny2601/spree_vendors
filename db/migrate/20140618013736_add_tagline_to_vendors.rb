class AddTaglineToVendors < ActiveRecord::Migration
  def change
    add_column :spree_vendors, :tagline, :text
  end
end
