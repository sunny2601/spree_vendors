module Spree
  module Admin
    class VendorsController < ResourceController

     def new
        @vendor = Vendor.new
        @vendor.vendor_images.build
      end

      def edit
        @vendor = Vendor.find(params[:id])
        @vendor.vendor_images.build
      end 

    end
  end
end

