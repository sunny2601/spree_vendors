module Spree
  module Admin
    class VendorsController < ResourceController

     def new
        @vendor = Vendor.new
        @vendor.vendor_images.build
      end

      def edit
        #@vendor = Vendor.find(params[:id])
        @vendor.vendor_images.build
      end 

      def delete_vendor_image
        @vendor.vendor_images.where(id: params[:image]).first.destroy
        flash[:notice] = "The image was successfully deleted"
        redirect_to edit_admin_vendor_url(@vendor)
      end

    end
  end
end

