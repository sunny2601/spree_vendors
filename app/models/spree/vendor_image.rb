module Spree
  class VendorImage < ActiveRecord::Base
    belongs_to :vendor

    has_attached_file :image, :styles => { :small => "300x300>", :standard => "460x634>" }#, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  end
end
