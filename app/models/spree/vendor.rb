module Spree
  class Vendor < ActiveRecord::Base
    has_many :vendor_images, :dependent => :destroy
    has_many :vendor_products, :dependent => :destroy
    has_many :vendor_taxons, :dependent => :destroy

    scope :features, -> { where(feature: true) }

    has_attached_file :logo, :styles => { :small => "300x300>", :standard => "460x634>" }#, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png"]

    accepts_nested_attributes_for :vendor_images, :allow_destroy => true
    accepts_nested_attributes_for :vendor_products, :allow_destroy => true
    accepts_nested_attributes_for :vendor_taxons, :allow_destroy => true

    alias_method :products, :vendor_products
    alias_method :images, :vendor_images
    alias_method :taxons, :vendor_taxons

    def featured?
        self.feature
    end

    def self.featured
      ::Spree::Vendor.where(feature: true).first
    end

    def feature_image
      self.images.first.image.url
    end

  end
end
