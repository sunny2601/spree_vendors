class CreateVendors < ActiveRecord::Migration
  def change
    create_table :spree_vendors do |t|
      t.string :name
      t.string :description
      t.date   :available_at
    end
  end
end
