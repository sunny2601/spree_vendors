class AddLocationToVendors < ActiveRecord::Migration
    def up
      add_column :spree_vendors, :location, :string
    
      change_column :spree_vendors, :description, :text
    end
  
    def down
      remove_column :spree_vendors, :location

      change_column :spree_vendors, :text, :string
    end
end
