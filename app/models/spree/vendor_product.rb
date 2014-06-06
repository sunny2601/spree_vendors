module Spree
  class VendorProduct < ActiveRecord::Base
    belongs_to :vendor
    belongs_to :product

    def feature_product_image
      self.product.images.first.attachment
    end
  end
end
