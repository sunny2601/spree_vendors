Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "vendors_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:vendors, :icon => 'truck') %>")

