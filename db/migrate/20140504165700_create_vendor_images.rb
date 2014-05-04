class CreateVendorImages < ActiveRecord::Migration
  def change
    create_table :spree_vendor_images do |t|
      t.references :vendor
      t.attachment :image

      t.timestamps
    end

    add_index :spree_vendor_images, :vendor_id
  end
end
