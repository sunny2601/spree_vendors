module Spree
  class VendorTaxon < ActiveRecord::Base
    #self.table_name = 'spree_vendor_taxons'

    acts_as_list
    belongs_to :vendor, class_name: "Spree::Vendor"#, inverse_of: :classifications
    belongs_to :taxon, class_name: "Spree::Taxon"#, inverse_of: :classifications

    # For #3494
    validates_uniqueness_of :taxon_id, :scope => :vendor_id, :message => :already_linked
  end
end
