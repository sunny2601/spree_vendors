class AddAttachmentLogoToVendors < ActiveRecord::Migration
  def self.up
    change_table :spree_vendors do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :spree_vendors, :logo
  end
end
