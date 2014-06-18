class AddAuthorAndQuoteFeields < ActiveRecord::Migration
  def change
    add_column :spree_vendors, :author, :string
    add_column :spree_vendors, :author_description, :text
    add_column :spree_vendors, :quote, :text
  end
end
