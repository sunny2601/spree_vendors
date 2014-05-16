class CreateVendorTaxons < ActiveRecord::Migration
  def change
    create_table :spree_vendor_taxons do |t|
      t.references :vendor, :taxon
      t.integer :position
    end
  end
end
