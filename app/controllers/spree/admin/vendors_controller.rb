module Spree
  module Admin
    class VendorsController < ResourceController

     after_filter :save_vendor_products, only: [:update]

     def new
        @vendor.vendor_images.build
      end

      def edit        
        @vendor.vendor_images.build
      end 

      def delete_vendor_image
        @vendor.vendor_images.where(id: params[:image]).first.destroy
        flash[:notice] = "The image was successfully deleted"
        redirect_to edit_admin_vendor_url(@vendor)
      end

      private
        def save_vendor_products
          @vendor.vendor_products.delete_all
          @vendor.vendor_products << params[:vendor_products][:product_ids_string].split(',').map{|id| VendorProduct.new(product_id:id)}
        end

    end
  end
end

