module Spree
  class Vendor < ActiveRecord::Base
    has_many :vendor_images, :dependent => :destroy

    has_attached_file :logo, :styles => { :small => "300x300>", :standard => "460x634>" }#, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    accepts_nested_attributes_for :vendor_images, :allow_destroy => true
  end
end
