module Spree
  class VendorsController < Spree::StoreController
    before_filter :load_vendor, :only => :show

    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    respond_to :html

    def index
    end

    def show
    end

    private
      def load_vendor
        @vendor = Spree::Vendor.find(params[:id])
      end      
  end
end
